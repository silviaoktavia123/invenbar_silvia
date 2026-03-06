<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Barang extends Model
{

    protected $fillable = [
        'kode_barang',
        'nama_barang',
        'kategori_id',
        'lokasi_id',
        'sumber_dana',
        'jumlah',
        'satuan',
        'kondisi',
        'tanggal_pengadaan',
        'gambar',
    ];

    protected $casts = [
        'tanggal_pengadaan' => 'date',
    ];

    public function kategori(): BelongsTo
    {
        return $this->belongsTo(Kategori::class, 'kategori_id');
    }

    public function lokasi(): BelongsTo
    {
        return $this->belongsTo(Lokasi::class, 'lokasi_id');
    }

    public function peminjamans()
    {
        return $this->hasMany(Peminjaman::class, 'barang_id', 'id');
    }
}
