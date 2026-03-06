<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Peminjaman;
use App\Models\Barang;
use App\Models\User;

class PeminjamanController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->search;

        $peminjamans = Peminjaman::with('barang')
            ->when($search, function ($query, $search) {
                $query->where('kode_peminjaman', 'like', "%$search%")
                    ->orWhere('peminjam', 'like', "%$search%");
            })
            ->latest()
            ->paginate(10)
            ->withQueryString();

        return view('peminjaman.index', compact('peminjamans'));
    }

    public function create()
    {
        $barang = Barang::all();
        $peminjaman = new Peminjaman();

        return view('peminjaman.create', compact('peminjaman', 'barang'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode_peminjaman' => 'required|string|max:50|unique:peminjamans,kode_peminjaman',
            'peminjam' => 'required|string|max:150',
            'barang_id' => 'required|exists:barangs,id',
            'jumlah' => 'required|integer|min:1',
            'tanggal_pinjam' => 'required|date',
            'tanggal_kembali' => 'nullable|date|after_or_equal:tanggal_pinjam',
        ]);

        // cek stok barang
        $barang = Barang::findOrFail($request->barang_id);
        if ($request->jumlah > $barang->jumlah) {
            return back()->withErrors(['jumlah' => 'Jumlah pinjam melebihi stok barang yang tersedia (stok: ' . $barang->jumlah . ')'])
                ->withInput();
        }

        $validated['status'] = 'dipinjam';

        Peminjaman::create($validated);

        return redirect()->route('peminjaman.index')
            ->with('success', 'Peminjaman berhasil ditambahkan.');
    }

    public function edit(Peminjaman $peminjaman)
    {
        $barang = Barang::all();
        return view('peminjaman.edit', compact('peminjaman', 'barang'));
    }

    public function update(Request $request, Peminjaman $peminjaman)
    {
        $validated = $request->validate([
            'peminjam' => 'required|string|max:150',
            'barang_id' => 'required|exists:barangs,id',
            'jumlah' => 'required|integer|min:1',
            'tanggal_pinjam' => 'required|date',
            'tanggal_kembali' => 'nullable|date',
        ]);

        $barang = Barang::findOrFail($request->barang_id);
        if ($request->jumlah > $barang->jumlah) {
            return back()->withErrors(['jumlah' => 'Jumlah pinjam melebihi stok barang yang tersedia (stok: ' . $barang->jumlah . ')'])
                ->withInput();
        }

        $peminjaman->update($validated);

        return redirect()->route('peminjaman.index')
            ->with('success', 'Data peminjaman berhasil diperbarui.');
    }

    public function kembali($id)
    {
        $peminjaman = Peminjaman::findOrFail($id);

        if ($peminjaman->status !== 'dipinjam') {
            return redirect()->back()->with('error', 'Barang sudah dikembalikan.');
        }

        $peminjaman->update([
            'status' => 'sudah dikembalikan',
            'tanggal_kembali' => now(),
        ]);

        return redirect()->route('peminjaman.index')
            ->with('success', 'Barang berhasil dikembalikan.');
    }

    public function laporan()
{
    $peminjamans = Peminjaman::with('barang')
    ->orderBy('kode_peminjaman', 'asc')
    ->get();
    
    $title = 'Laporan Peminjaman Barang';
    $date = now()->format('d-m-Y');

    return view('peminjaman.laporan', compact('peminjamans', 'title', 'date'));
}

}
