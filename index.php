
<?php
$servername = "172.21.0.2";
$username = "root";
$password = "kentang1";
$dbname = "Redlock";


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "========================================================================<br>";
    echo "|<tr><td>id:   " . $row["ID(PK)"]. " <tr><td>|<tr><td> Nama:   " . $row["Nama"]. " <tr><td>| <tr><td>Alamat: " . $row["Alamat"]. " <tr><td>| <tr><td>Jabatan: " .$row["Jabatan"].   " <br>";
  }
} else {
  echo "No Data in the Databases";
}

echo "<br> num of data = ";
echo $result->num_rows;
echo "<br>";

$conn->close();
?>