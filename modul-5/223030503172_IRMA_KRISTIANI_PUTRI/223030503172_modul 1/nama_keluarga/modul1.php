<?php
// Fungsi untuk menghitung jumlah kata
function hitungJumlahKata($nama) {
    return str_word_count($nama);
}

// Fungsi untuk menghitung jumlah huruf
function hitungJumlahHuruf($nama) {
    return strlen($nama);
}

// Fungsi untuk membalikkan nama
function balikNama($nama) {
    return strrev($nama);
}

// Fungsi untuk menghitung jumlah konsonan
function hitungJumlahKonsonan($nama) {
    $konsonan = preg_replace('/[aeiouAEIOU]/', '', $nama);
    return strlen($konsonan);
}

// Fungsi untuk menghitung jumlah vokal
function hitungJumlahVokal($nama) {
    $vokal = preg_replace('/[^aeiouAEIOU]/', '', $nama);
    return strlen($vokal);
}

// Fungsi untuk menyimpan data ke file
function simpanData($nama) {
    $file = fopen("data.txt", "a");
    fwrite($file, $nama . PHP_EOL);
    fclose($file);
}

// Fungsi untuk menghapus data dari file
function hapusData($nama) {
    $lines = file("data.txt");
    $output = array_diff($lines, array($nama . PHP_EOL));
    file_put_contents("data.txt", $output);
}

// Check apakah form sudah disubmit
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama_keluarga = $_POST["nama"];

    echo "<h3>Nama: $nama_keluarga</h3>";
    echo "Jumlah kata: " . hitungJumlahKata($nama_keluarga) . "<br>";
    echo "Jumlah huruf: " . hitungJumlahHuruf($nama_keluarga) . "<br>";
    echo "Kebalikan nama: " . balikNama($nama_keluarga) . "<br>";
    echo "Jumlah konsonan: " . hitungJumlahKonsonan($nama_keluarga) . "<br>";
    echo "Jumlah vokal: " . hitungJumlahVokal($nama_keluarga) . "<br><br>";

    // Simpan nama ke dalam file
    simpanData($nama_keluarga);
}

// Periksa apakah tombol hapus telah ditekan
if (isset($_POST['hapus_nama'])) {
    $hapus_nama = $_POST['hapus_nama'];
    echo "<p>Nama '$hapus_nama' telah dihapus.</p>";
    // Hapus data dari file
    hapusData($hapus_nama);
}

// Tampilkan nama-nama yang tersimpan dalam file
if (file_exists("data.txt")) {
    $nama_keluarga = file("data.txt", FILE_IGNORE_NEW_LINES);
    foreach ($nama_keluarga as $nama) {
        echo "<h3>Nama: $nama</h3>";
        echo "Jumlah kata: " . hitungJumlahKata($nama) . "<br>";
        echo "Jumlah huruf: " . hitungJumlahHuruf($nama) . "<br>";
        echo "Kebalikan nama: " . balikNama($nama) . "<br>";
        echo "Jumlah konsonan: " . hitungJumlahKonsonan($nama) . "<br>";
        echo "Jumlah vokal: " . hitungJumlahVokal($nama) . "<br>";
        echo "<form method='post'><input type='hidden' name='hapus_nama' value='$nama'><button type='submit'>Hapus</button></form><br>";
    }
}
?>

<!-- Form untuk memasukkan nama -->
<form method="post">
    <label for="nama">Masukkan Nama:</label>
    <input type="text" id="nama" name="nama">
    <button type="submit">Proses</button>
</form>

</body>
</html>
