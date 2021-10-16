<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "esp32datatransfer";

$api_key= $SubTileRow = $SubTileCol= $MainTileNameNumeric = $Value1 = $Value2 = $Value3 = $Value4 = $Value5 = $Value6 = $Value7 = $Value8 = "";

if($_SERVER["REQUEST_METHOD"] == "POST"){

		$SubTileRow = $_POST["SubTileRow"];
		$SubTileCol = $_POST["SubTileCol"];
		$MainTileNameNumeric = $_POST["MainTileNameNumeric"];
		$Value1 = $_POST["Value1"];
		$Value2 = $_POST["Value2"];
		$Value3 = $_POST["Value3"];
		$Value4 = $_POST["Value4"];
		$Value5 = $_POST["Value5"];
		$Value6 = $_POST["Value6"];
		$Value7 = $_POST["Value7"];
		$Value8 = $_POST["Value8"];

		//create a new conection
		$conn = new mysqli($servername,$username,$password,$dbname);

		//checking the connection
		if($conn->connect_error){

			die("Connection failed:  " . $conn->connect_error)
		}

        //insert values 
		$sql = "INSERT INTO sensordata (SubTileRow, SubTileCol, MainTileNameNumeric, Value1, Value2, Value3, Value4, Value5, Value6, Value7, Value8)
        VALUES ('" . $SubTileRow . "', '" . $SubTileCol . "', '" . $MainTileNameNumeric . "', '" . $Value1 . "', '" . $Value2 . "','". $Value3 . "','". $Value4 ."','". $Value5 ."','". $Value6 ."','". $Value7 ."','". $Value8 ."')";

         if ($conn ->query($sql) === TRUE) {

            echo "New record created successfully";

        }else {

            echo "Error: " . $sql . "<br>" . $conn->error;
        }

        $conn->close();

}else{

	echo "No data posted with HTTP";
}
?>