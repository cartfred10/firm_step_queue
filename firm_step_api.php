<?php

$data = array();
foreach($_POST as $key => $value){
	
	$data[$key] = $value;
}
$insert = implode("','",$data);



$db = mysqli_connect('localhost','root','fred2409','firm_step');

if(!$db){
	echo "sorry not connected";
}

$insert = ("INSERT INTO queue (firstName, lastName,organization,type,service) 
			VALUES ('{$insert}')");

if(mysqli_query($db,$insert)){
	
	echo '<h2>Data for queue has been updated in Records</h2><br />';
	
}
else{
	echo 'not inserted ' . mysqli_error($db);;
}
if($insert==TRUE)
{
    response(200,"inserted","Successfully Inserted");
	echo "<br />";

}
else
{
response(400,"not inserted","not inserted");   
}



function response($status,$status_message,$data)
{
    $send['status']=$status;
    $send['status_message']=$status_message;
    $send['data']=$data;

    $jSend=json_encode($send);
    echo $jSend;
}


$query = "SELECT * FROM queue";
$array = array();
$result = mysqli_query($db, $query) or die("Error in Selecting " . mysqli_error($db));
	while ($rows = mysqli_fetch_assoc($result)){
		$array[] = $rows;
	}
	echo json_encode($array);




?>