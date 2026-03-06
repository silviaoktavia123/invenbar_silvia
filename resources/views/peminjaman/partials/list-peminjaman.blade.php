@php
    use Carbon\Carbon;

    // Hitung jumlah peminjaman terlambat
    $jumlahTerlambat = $peminjamans
        ->filter(function ($p) {
            if ($p->status === 'dipinjam' && $p->tanggal_kembali) {
                $tglKembali = Carbon::parse($p->tanggal_kembali);
                return $tglKembali->isPast() && !$tglKembali->isToday();
            }
            return false;
        })
        ->count();
@endphp

{{-- 🔴 ALERT TERLAMBAT --}}
@if ($jumlahTerlambat > 0)
    <div class="alert alert-danger d-flex align-items-center" role="alert">
        <i class="bi bi-exclamation-triangle-fill me-2"></i>
        <div>
            Ada <strong>{{ $jumlahTerlambat }}</strong> peminjaman yang terlambat pengembaliannya.
        </div>
    </div>
@else
    <div class="alert alert-success d-flex align-items-center" role="alert">
        <i class="bi bi-check-circle-fill me-2"></i>
        <div>
            ✅ Semua peminjaman telah dikembalikan tepat waktu.
        </div>
    </div>
@endif



<x-table-list>
    <x-slot name="header">
        <tr>
            <th>#</th>
            <th>Kode</th>
            <th>Peminjam</th>
            <th>Nama Barang</th>
            <th>Jumlah</th>
            <th>Tgl Pinjam</th>
            <th>Tgl Kembali</th>
            <th>Status</th>
            <th>Aksi</th>
        </tr>
    </x-slot>

    @forelse ($peminjamans as $index => $p)
        @php
            $isLate = false;
            $isDueToday = false;

            if ($p->status === 'dipinjam' && $p->tanggal_kembali) {
                $tglKembali = \Carbon\Carbon::parse($p->tanggal_kembali);

                if ($tglKembali->isPast() && !$tglKembali->isToday()) {
                    $isLate = true; // lewat
                } elseif ($tglKembali->isToday()) {
                    $isDueToday = true; // pas hari ini
                }
            }
        @endphp
        <tr
            @if ($isLate) class="table-danger"
        @elseif($isDueToday) class="table-warning" @endif>
            <td>{{ $peminjamans->firstItem() + $index }}</td>
            <td>{{ $p->kode_peminjaman }}</td>
            <td>{{ $p->peminjam }}</td>
            <td>{{ $p->barang->nama_barang }}</td>
            <td>{{ $p->jumlah }}</td>
            <td>{{ $p->tanggal_pinjam }}</td>
            <td>{{ $p->tanggal_kembali ?? '-' }}</td>
            <td>
                @if ($p->status === 'sudah dikembalikan')
                    <span class="badge bg-primary">Sudah Dikembalikan</span>
                @else
                    @if ($isLate)
                        <span class="badge bg-danger">Terlambat</span>
                    @elseif($isDueToday)
                        <span class="badge bg-warning text-dark">Jatuh Tempo Hari Ini</span>
                    @else
                        <span class="badge bg-success">Dipinjam</span>
                    @endif
                @endif
            <td class="text-center">
                <div class="d-flex justify-content-center align-items-center gap-2">
                    {{-- Tombol Kembalikan (jika masih dipinjam) --}}
                    @if ($p->status === 'dipinjam')
                        <form action="{{ route('peminjaman.kembali', $p->id) }}" method="POST" class="d-inline"
                            onsubmit="return confirm('Yakin sudah dikembalikan?');">
                            @csrf
                            @method('PUT')
                            <button type="submit" class="btn btn-sm btn-success">
                                Kembalikan
                            </button>
                        </form>
                    @endif

                    {{-- Tombol Show & Edit --}}
                    @can('manage barang')
                        <x-tombol-aksi href="{{ route('peminjaman.edit', $p->id) }}" type="edit" />
                    @endcan
                </div>
            </td>
        </tr>
    @empty
        <tr>
            <td colspan="9" class="text-center">
                <div class="alert alert-danger">Data peminjaman tidak ditemukan</div>
            </td>
        </tr>
    @endforelse
</x-table-list>
