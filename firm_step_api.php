<?php



$data = array();
foreach($_POST as $key => $value){
	
	$data[$key] = $value;
}
$insert = implode("','",$data);
//echo "here i am";
//print_r($_POST);

//$insert = json_encode($data);





$db = mysqli_connect('localhost','root','fred2409','firm_step');

if(!$db){
	echo "sorry not connected";
}

$insert = ("INSERT INTO queue (firstName, lastName,organization,type,service) 
			VALUES ('{$insert}')");

if(mysqli_query($db,$insert)){
	
	echo '<h2>Data for queue has been inserted</h2><br />';
	
}
else{
	echo 'not inserted ' . mysqli_error($db);;
}
if($insert==TRUE)
{
    d_response(200,"inserted","Successfully Inserted");
	echo "<br />";

}
else
{
d_response(400,"not inserted","not inserted");   
}



function d_response($status,$status_message,$data)
{
    $response['status']=$status;
    $response['status_message']=$status_message;
    $response['data']=$data;

    $jresponse=json_encode($response);
    echo $jresponse;
}


$query = "SELECT * FROM queue";
$array = array();
$result = mysqli_query($db, $query) or die("Error in Selecting " . mysqli_error($db));
	while ($rows = mysqli_fetch_assoc($result)){
		$array[] = $rows;
	}
	echo json_encode($array);




?>