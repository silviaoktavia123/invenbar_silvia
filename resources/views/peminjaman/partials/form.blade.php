@csrf
<div class="row mb-3">
    <div class="col-md-6">
        <x-form-input label="Kode Peminjaman" name="kode_peminjaman" :value="$peminjaman->kode_peminjaman ?? old('kode_peminjaman')" />
    </div>
    <div class="col-md-6">
        <x-form-input label="Nama Peminjam" name="peminjam" :value="$peminjaman->peminjam ?? old('peminjam')" />
    </div>
</div>

<div class="row mb-3">
    <div class="col-md-6">
        <x-form-select 
            label="Barang" 
            name="barang_id" 
            :value="$peminjaman->barang_id ?? old('barang_id')" 
            :option-data="$barang" 
            option-label="nama_barang" 
            option-value="id" 
        />
    </div>
    <div class="col-md-6">
        <x-form-input label="Jumlah Dipinjam" name="jumlah" type="number" :value="$peminjaman->jumlah ?? old('jumlah')" />
    </div>
</div>

<div class="row mb-3">
    <div class="col-md-6">
        @php
            $tgl_pinjam = $peminjaman->tanggal_pinjam ?? old('tanggal_pinjam');
            $tgl_pinjam = $tgl_pinjam ? date('Y-m-d', strtotime($tgl_pinjam)) : null;
        @endphp
        <x-form-input label="Tanggal Pinjam" name="tanggal_pinjam" type="date" :value="$tgl_pinjam" />
    </div>
    <div class="col-md-6">
        @php
            $tgl_kembali = $peminjaman->tanggal_kembali ?? old('tanggal_kembali');
            $tgl_kembali = $tgl_kembali ? date('Y-m-d', strtotime($tgl_kembali)) : null;
        @endphp
        <x-form-input label="Tanggal Kembali" name="tanggal_kembali" type="date" :value="$tgl_kembali" />
    </div>
</div>

<div class="mt-4">
    <x-primary-button type="submit">
        {{ isset($update) ? __('Update') : __('Simpan') }}
    </x-primary-button>
    <x-tombol-kembali :href="route('peminjaman.index')" />
</div>