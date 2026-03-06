<!DOCTYPE html>
<html>

<head>
    <title>{{ $title }}</title>
    @include('barang.partials.style-laporan')

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
        background-color: #ee7cc8;
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
    @include('barang.partials.list-laporan')
</body>

</html>
