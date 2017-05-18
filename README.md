# firm_step_queue

This an implementation of a localhost RESTful API which uses the library cURL utility which supports 'libcurl' to access urls and post, get, or put data but in my case it was post, I specified all the required curl functions in the 'curl.php' along with assigning url where i will executing the request and then created a array with the data in which I will be posting into database this will go in 

``
$post_data = array("Michael","Carter","Apprentice","Anonymous","Council Tax");
curl_setopt($curl, CURLOPT_POSTFIELDS,$post_data);
``
Then I had to check on file 'firm_step_api.php' to get that post data from the array ``$post_data`` using ``$_POST`` request
I created a foreach loop and created a another empty array to assign key and value from ``$_POST`` copy to retrieve post data
and used the ``$insert = implode("','",$data);`` to convert array to string ready to be inserted into database...

``$insert = ("INSERT INTO queue (firstName, lastName,organization,type,service) VALUES ('{$insert}')");``

Next I implemented the required error handing for data insertion and then the status of insertion and message call function...

``function response($status,$status_message,$data){

    $send['status']=$status;
    $send['status_message']=$status_message;
    $send['data']=$data;

    $jSend=json_encode($send);
    echo $jSend;
    }
``
Finally I created a select query to print out submitted data from database in JSON format as requested...

``$query = "SELECT * FROM queue";``
``$array = array();``
``$result = mysqli_query($db, $query) or die("Error in Selecting " . mysqli_error($db));``

	``while ($rows = mysqli_fetch_assoc($result)){
		$array[] = $rows;
	}
	``echo json_encode($array);``

