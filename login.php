<?php
// Establish connection to MySQL database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gym";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get username and password from the login form
$email = $_POST['Email'];
$password = $_POST['Password'];

// Prepare SQL statement to check if user exists in the database
$sql = "SELECT * FROM members WHERE Email = '$email' AND Password = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // User exists, login successful
    session_start();
    $row = $result->fetch_assoc();
    $_SESSION['name'] = $row['Name'];
    $_SESSION['email'] = $row['Email'];
    $_SESSION['id'] = $row['id'];
    $_SESSION['height'] = $row['Height'];
    $_SESSION['weight'] = $row['Weight'];
    $_SESSION['age'] = $row['Age'];
    $_SESSION['gender'] = $row['Gender'];
    $_SESSION['membership'] = $row['Membership'];
    $_SESSION['facilities'] = $row['Facilities'];
    header("Location: ./account.php");
    exit();
} else {
    // User does not exist or credentials are incorrect
    echo "Invalid username or password.";
}

$conn->close();
?>
