<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COOLERCITY STORE</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: separate; /* Menggunakan garis pemisah antar kolom */
            border-spacing: 0; /* Jarak antar garis pemisah */
            margin-top: -150px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            border-right: 1px solid #ddd; /* Menambahkan garis pemisah antar kolom */
        }

        th {
            background-color: #f2f2f2;
            text-transform: uppercase;
            font-size: 14px;
            font-weight: bold;
            color: #555;
            border-right: none; /* Hapus garis pemisah untuk kolom terakhir */
        }

        td {
            font-size: 14px;
        }

        a {
            text-decoration: none;
            color: #007bff;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }

        button {
            padding: 15px 25px;
            background-color: #9fc8f3;
            color: #fff;
            border: none;
            border-radius: 19px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #ff1ba8;
        }
    </style>

</head>
<body>
    <div class="container">
        <h1>COOLERCITY STORE</h1>

        <!-- Tombol untuk menambahkan data sepatu -->
        <div style="float: left;">
            <a href="tambah_sepatu.blade.php"><button>Tambah Data Sepatu</button></a>
        </div>

        <!-- Tombol untuk menuju halaman pelanggan -->
        <div style="float: left; margin-left: 10px;">
            <a href="transaksi.blade.php"><button>Transaksi</button></a>
        </div>

        <!-- Tombol untuk mencari data -->
        <div style="float: right;">
            <a href="search.php"><button>Cari Data</button></a>
        </div>

        <!-- Tabel untuk menampilkan data -->
        <table>
            <thead>
                <tr>
                    <th>No.</th>
                    <th>ID Sepatu</th>
                    <th>Merk</th>
                    <th>Jenis Sepatu</th>
                    <th>Ukuran</th>
                    <th>Harga</th>
                    <th>Stok</th>
                    <th>Gambar</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <!-- Isi tabel akan di-generate dengan data dari database -->
                <?php
                // Koneksi ke database
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "coolercity";

                $conn = new mysqli($servername, $username, $password, $dbname);

                // Cek koneksi
                if ($conn->connect_error) {
                    die("Koneksi gagal: " . $conn->connect_error);
                }
                require_once('function.php');

                // $limit = 5; // Jumlah data per halaman
                // $page = isset($_GET['page']) ? $_GET['page'] : 1; // Halaman saat ini
                // $start = ($page - 1) * $limit; // Awal data untuk setiap halaman

                $batas = 10;
                $halaman = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
                $halaman_awal = ($halaman > 1) ? ($halaman * $batas) - $batas : 0;


                $jumlah_data = limitsepatu(); // Menghitung total data
                $total_halaman = ceil($jumlah_data / $batas); // Menghitung total halaman

                // Mengambil data sepatu dengan batasan dan offset
                $jml_informasi = pagingsepatu($halaman_awal, $batas);

                $no = $halaman_awal + 1;

                if (!empty($jml_informasi)) { // Periksa apakah data ditemukan
                    foreach ($jml_informasi as $row) { // Iterasi melalui data yang ditemukan
                        // Output data dari setiap baris
                        echo "<tr>";
                            echo "<td>" . $no . "</td>";
                        echo "<td>" . $row["id_sepatu"] . "</td>";
                        echo "<td>" . $row["merk_sepatu"] . "</td>";
                        echo "<td>" . $row["jenis_sepatu"] . "</td>";
                        echo "<td>" . $row["ukuran"] . "</td>";
                        echo "<td>" . $row["harga"] . "</td>";
                        echo "<td>" . $row["stok"] . "</td>";
                        echo "<td><img src='image/" . $row["gambar"] . "' alt='Sepatu' style='width:150px;height:150px;'></td>";
                        // Tombol untuk mengedit data
                        echo "<td><a href='ubah_sepatu.blade.php?id=".$row["id_sepatu"]."'><button>Edit</button></a><br><br>";
                        // Tombol untuk menghapus data
                        echo "<a href='hapus_sepatu.blade.php?id=".$row["id_sepatu"]."'><button>Hapus</button></a></td><br>";
                        echo "</tr>";
                        $no++;
                    }
                } else {
                    echo "<tr><td colspan='7'>Tidak ada data sepatu.</td></tr>";
                }


                $conn->close();
                ?>
            </tbody>
        </table>

           <!-- Pagginnation -->
            <?php
            $previous = $halaman - 1;
            $next = $halaman + 1;
            ?>
            <nav>
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a class="page-link" <?php if ($halaman > 1) {
                            echo "href='index.blade.php?halaman=$previous'";
                        } ?>>Previous</a>
                    </li>
                    <?php for ($x = 1; $x <= $total_halaman; $x++) { ?>
                        <li class="page-item"><a class="page-link" href="index.blade.php?halaman=<?php echo $x ?>"><?php echo $x; ?></a></li>
                    <?php } ?>
                    <li class="page-item">
                        <a class="page-link" <?php if ($halaman < $total_halaman) {
                            echo "href='index.blade.php?halaman=$next'";
                        } ?>>Next</a>
                    </li>
                </ul>
            </nav>

        <!-- Tombol untuk mencari data -->
        <div style="float: left;">
            <a href="logout.php"><button>Logout</button></a>
        </div>

        <!-- Tombol untuk mencari data -->
        <div style="float: right; ">
            <a href="register.php"><button>Register Admin</button></a>
        </div>
    </div>
</body>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<title>Bootstrap Example</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<body class="p-3 m-0 border-0 bd-example m-0 border-0">





<!-- End Example Code -->
</body>
</html>
</html>
