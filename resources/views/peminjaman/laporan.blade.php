<!DOCTYPE html>
<html>
<head>
    <title>{{ $title }}</title>
    <style>
        body {
            font-family: 'DejaVu Sans', sans-serif;
            font-size: 12px;
            color: #333;
            margin: 30px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .header h1 {
            color: #2c3e50;
            font-size: 20px;
            margin-bottom: 4px;
        }

        .header p {
            font-size: 11px;
            color: #555;
            margin: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        th {
            background-color: #ec93d1;
            color: #fff;
            text-align: center;
            padding: 6px;
            border: 1px solid #ddd;
            font-weight: bold;
        }

        td {
            border: 1px solid #ddd;
            padding: 6px;
        }

        tr:nth-child(even) {
            background-color: #f4f8fb;
        }

        tr:hover {
            background-color: #dbe9f6;
        }

        .footer {
            margin-top: 25px;
            text-align: right;
            font-size: 11px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>{{ $title }}</h1>
        <p>Tanggal Cetak: {{ $date }}</p>
    </div>

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Kode</th>
                <th>Peminjam</th>
                <th>Barang</th>
                <th>Jumlah</th>
                <th>Status</th>
                <th>Tgl Pinjam</th>
                <th>Tgl Kembali</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($peminjamans as $i => $p)
                <tr>
                    <td>{{ $i + 1 }}</td>
                    <td>{{ $p->kode_peminjaman }}</td>
                    <td>{{ $p->peminjam }}</td>
                    <td>{{ $p->barang->nama_barang ?? '-' }}</td>
                    <td>{{ $p->jumlah }}</td>
                    <td>{{ $p->status }}</td>
                    <td>{{ $p->tanggal_pinjam }}</td>
                    <td>{{ $p->tanggal_kembali ?? '-' }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="8" style="text-align: center;">Tidak ada data peminjaman.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <div class="footer">
        Dicetak pada: {{ $date }}
    </div>
</body>
</html>
