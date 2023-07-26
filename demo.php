<?php
//connecting to database
$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "patient_details"; 

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if (!$conn) 
	die("Connection failed: " . mysqli_connect_error());
else
	echo "Connected successfully with mySQL Database System ";
    echo "<br>";

// get the post records
$patient_name = $_POST['patient_name'];
$address = $_POST['address'];
$phone_number = $_POST['phone_number'];
$admitted_time = $_POST['admitted_time'];
$patient_id = $_POST['patient_id'];

// sql code to create table
$sql = "INSERT INTO p_details (`Patient_name`, `Patient_address`, `Phone_num`, `Admit_Date`, `P_id`)
         VALUES ('$patient_name', '$address', '$phone_number', '$admitted_time', '$patient_id')";

// this will execute above query and it takes 2 parameters
$result = mysqli_query($conn,$sql);

//check for database creation success
if($result) {
		echo "The Patient's details has been entered successfully! ";
	}
else  {

		echo "The Patient's Details has not been entered successfully because of this error --> " . mysqli_error($conn);
       }

// Step 3: Handle form data in PHP
/*if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $patient_name = $_POST["patient_name"];
    $phone_number = $_POST["phone_number"];
    $address = $_POST["address"];
    $admitted_time = $_POST["admitted_time"];
    $patient_id = $_POST["patient_id"];
*/
    // Step 4: Display the data
    echo "<p><strong>Patient Name :</strong> $patient_name</p>";
    echo "<p><strong>Patient Phone number :</strong> $phone_number</p>";
    echo "<p><strong>Address:</strong> $address</p>";
    echo "<p><strong>Admitted Date:</strong> $admitted_time</p>";
    echo "<p><strong>Patient ID :</strong> $patient_id</p>";

$conn->close();
?>