<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{

    use HasFactory;
    protected $table = 'peminjamans'; // tabel biasanya plural

    protected $fillable = [
        'kode_peminjaman',
        'peminjam',          // nama peminjam (input manual)
        'barang_id',         // relasi ke barang
        'jumlah',
        'tanggal_pinjam',
        'tanggal_kembali',
        'status',
    ];

    // Relasi ke Barang
    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }

    // Relasi ke User
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

}