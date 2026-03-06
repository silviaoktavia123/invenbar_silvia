<x-main-layout :title-page="__('Tambah Peminjaman')">
    <form class="card" action="{{ route('peminjaman.store') }}" method="POST" enctype="multipart/form-data">
        <div class="card-body">
            @include('peminjaman.partials._form')
        </div>

        <div class="row">
            <div class="col">
                <x-tombol-tambah label="Tambah Peminjaman" href="{{ route('peminjaman.create') }}" />
                <x-tombol-cetak label="Cetak Laporan Peminjaman" href="{{ route('barang.laporan') }}" />
            </div>
            <div class="col">
                <x-form-search placeholder="Cari nama/kode peminjaman..." />
            </div>
        </div>
    </form>
</x-main-layout>
