<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Input Nama</h1>
    <form id="namaForm" action="{{ route('modul-2') }}" method="GET">
        <div id="namaFields">
            <label for="">Nama:</label>
            <input type="text" name="nama[]"><br><br>
        </div>
        <button type="button" onclick="tambahField()">Tambah Nama</button>
        <button type="button" onclick="hapusField()">Hapus Nama</button><br><br>
        <button type="submit">Analisis</button>
    </form>

    @if ($errors->any())
    <div>
        <ul>
            @foreach ( $errors->all() as $error )
            <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <div class="namaResult">
        @forelse ($hasil as $item)
        <p>Nama : {{ $item['nama'] }}</p>
        <p>Jumlah Kata : {{ $item['jumlah_kata'] }}</p>
        <p>Jumlah Huruf : {{ $item['jumlah_huruf'] }}</p>
        <p>Kebalikan Nama : {{ $item['kebalikan_nama'] }}</p>
        <p>Jumlah Konsonan : {{ $item['jumlah_konsonan'] }}</p>
        <p>Jumlah Vokal : {{ $item['jumlah_vokal'] }}</p><br>
        @empty
        <p>Data Kosong</p>
        @endforelse
    </div>

    <script>
        function tambahField() {
            let div = document.createElement("div");
            div.innerHTML =
                '<label for="nama">Nama: </label> <input type="text" name="nama[]" required><br><br>';
            document.getElementById("namaFields").appendChild(div);
        }

        function hapusField() {
            let fields = document.getElementsByName("nama[]");
            if (fields.length > 1) {
                fields[fields.length - 1].parentNode.remove();
            }
        }
    </script>
</body>

</html>