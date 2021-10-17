<!DOCTYPE HTML>  
<html>
<head>
<style>
.error {color: #FF0000;}
</style>
</head>
<body> 

<form method="post" >
    <input type="number" name="value" value="<?php echo isset($_POST["value"]) ? $_POST["value"] : ''; ?>"/>
    <input type="submit" name="feed_in_status" value="feed_in_status"/>
    <input type="submit" name="instant_values" value="instant_values"/>
    <input type="submit" name="pv_instant_values" value="pv_instant_values"/>
    <input type="submit" name="system_info" value="system_info"/>
</form>


<?php
//dbconnection required parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "esp32datatransfer";

$rowIn = $colIn = $mainTileIn = "";
$i =0 ;
$emptyArray = (array) null;


//$Table= "$_POST[feed_in_status]";
$Act1 = $Act2 = $Act3 = $Act4 = $Act5 = $Act6 = $Act7 = $Act8 = "";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

//checking the connection
if($conn->connect_error){

	die("Connection failed:  " . $conn->connect_error);
}

//based on input and button selection - select query
if(isset($_POST['feed_in_status']))
{
	echo '<table border=1 cellpadding=2 width="20%">'; 
	  $sqli = "SELECT * FROM $_POST[feed_in_status] WHERE _inverter_device_address = ('$_POST[value]')";

	  $result = $conn-> query($sqli);
	  $followingdata = $result->fetch_assoc();
	
	  foreach ($followingdata as $key => $value) {
		echo '<tr>';
		echo '<th>' . $key . '</th>';
		echo '<td style="text-align:center;">' . $value . '</td>';
		echo '</tr>';
	}	

	echo '</table>';
	   $conn->close();
}
if(isset($_POST['instant_values']))
{
	echo '<table border=1 cellpadding=2 width="40%">'; 
	  $sqli = "SELECT * FROM $_POST[instant_values] WHERE _inverter_device_address = ('$_POST[value]')";

	  $result = $conn-> query($sqli);
	  $followingdata = $result->fetch_assoc();
	  		
	  foreach ($followingdata as $key => $value) {
		echo '<tr>';
		echo '<th>' . $key . '</th>';
		echo '<td style="text-align:center;">' . $value . '</td>';
		echo '</tr>';
	}	

	echo '</table>';
	   $conn->close();
}
if(isset($_POST['pv_instant_values']))
{
	echo '<table border=1 cellpadding=2 width="40%">'; 
	  $sqli = "SELECT * FROM $_POST[pv_instant_values] WHERE _inverter_device_address = ('$_POST[value]')";

	  $result = $conn-> query($sqli);
	  $followingdata = $result->fetch_assoc();
	  		
	  foreach ($followingdata as $key => $value) {
		echo '<tr>';
		echo '<th>' . $key . '</th>';
		echo '<td style="text-align:center;">' . $value . '</td>';
		echo '</tr>';
	}	

	echo '</table>';
	   $conn->close();
}
if(isset($_POST['system_info']))
{
	echo '<table border=1 cellpadding=2 width="20%">';   
	  $sqli = "SELECT * FROM $_POST[system_info] WHERE _inverter_device_address = ('$_POST[value]')";

	  $result = $conn-> query($sqli);
	  $followingdata = $result->fetch_assoc();
	  		
	  
	  foreach ($followingdata as $key => $value) {
		echo '<tr>';
		echo '<th>' . $key . '</th>';
		echo '<td style="text-align:center;">' . $value . '</td>';
		echo '</tr>';
	}	
	
	echo '</table>';
	   $conn->close();
}
?>


</body>
</html>