<?php
// Koneksi ke database (gantilah dengan koneksi sesuai konfigurasi Anda)
$conn = new mysqli("localhost", "root", "sandwich", "prakweb_2023_A_213040003");

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi ke database gagal: " . $conn->connect_error);
}

// Query untuk mengambil data dari tabel books

$result = $conn->query("SELECT * FROM books");
$books = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $books[] = $row;
    }
}
// Tutup koneksi ke database
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Buku</title>
    <!-- Sertakan Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>

    <div class="container mt-5">
        <h1>Daftar Buku</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Judul</th>
                    <th>Penulis</th>
                    <th>Tahun Publikasi</th>
                    <th>Genre</th>
                    <th>Harga</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($books as $book) { ?>
                    <tr>
                        <td><?= $book["isbn"]; ?></td>
                        <td><?= $book["title"]; ?></td>
                        <td><?= $book["author"]; ?></td>
                        <td><?= $book["publication_year"]; ?></td>
                        <td><?= $book["genre"]; ?></td>
                        <td>$<?= $book["price"]; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    <!-- Sertakan Bootstrap JavaScript (opsional, tergantung dari kebutuhan Anda) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>