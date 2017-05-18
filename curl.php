
<h1>Firm Step Customer Queue</h1>
 
<?php

$url = "http://localhost/firmstep/firm_step_api.php";

$post_data = array("Michael","Carter","Apprentice","Anonymous","Council Tax");
	
$curl = curl_init($url);   

curl_setopt($curl, CURLOPT_FAILONERROR, 1); 

curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);

curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

curl_setopt($curl, CURLOPT_TIMEOUT, 0);

curl_setopt($curl, CURLOPT_POST, 1);

curl_setopt($curl, CURLOPT_POSTFIELDS,$post_data);

$r = curl_exec($curl);

curl_close($curl);

print_r($r);


?>

