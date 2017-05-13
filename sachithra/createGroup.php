<?php
header("Access-Control-Allow-Origin: *");
$mysql_host = "localhost";
$mysql_database = "id1650715_pdm_123456789";
$mysql_user = "id1650715_onida_123456789";
$mysql_password = "123456789";

// Create connection
$conn = new mysqli($mysql_host, $mysql_user, $mysql_password,$mysql_database);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$partyName = $_POST['party_name'];
$AdminUsername = $_POST['Admin_Username'];
$EventDate = $_POST['Event_Date'];
$EventTime= $_POST['Event_Time'];
$dressCode = $_POST['dress_code'];
$RsvpDate=$_POST['RSVP_Date'];



$sql = "INSERT INTO `User`(`groupName`, `admin_userName`, `eventDate`, `eventTime`, `dresscode`,`rsvp_date`) VALUES ('$partyName','$AdminUsername','$EventDate','$EventTime','$dressCode','$RsvpDate')";

if(!mysqli_query($conn,$sql)){
    die('Error'.mysqli_error($conn));
}
echo"1 row added";
mysqli_close($conn);

?>