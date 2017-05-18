# firm_step_queue

This an implementation of a localhost RESTful API which uses the library cURL utility which supports 'libcurl' to access urls and post, get, or put data but in my case it was post, I specified all the required curl functions in the 'curl.php' along with assigning url where i will executing the request and then created a array with the data in which I will be posting into database this will go in 

```php
$post_data = array("Michael","Carter","Apprentice","Anonymous","Council Tax");
curl_setopt($curl, CURLOPT_POSTFIELDS,$post_data);
```
Then I had to check on file 'firm_step_api.php' to get that post data from the array `$post_data` using `$_POST` request
I created a foreach loop and created a another empty array to assign key and value from ``$_POST`` copy to retrieve post data
and used the 
```php 
$insert = implode("','",$data); 
```
to convert array to string ready to be inserted into database...

```php 
$insert = ("INSERT INTO queue (firstName, lastName,organization,type,service) VALUES ('{$insert}')");
```

Next I implemented the required error handing for data insertion and then the status of insertion and message call function...

```php 
function response($status,$status_message,$data){

    $send['status']=$status;
    $send['status_message']=$status_message;
    $send['data']=$data;

    $jSend=json_encode($send);
    echo $jSend;
    }
```
Finally I created a select query to print out submitted data from database in JSON format as requested...

```php 
$query = "SELECT * FROM queue";
$array = array();
$result = mysqli_query($db, $query) or die("Error in Selecting " . mysqli_error($db));

	while ($rows = mysqli_fetch_assoc($result)){
		$array[] = $rows;
	}
	echo json_encode($array);
```
**Please see below output of data submitted into database response...**

{"status":200,"status_message":"inserted","data":"Successfully Inserted"}
[{"id":"1","firstName":"Doctor","lastName":"Who","organization":null,"type":"Citizen","service":"","queuedDate":"2017-05-01 00:00:00"},{"id":"2","firstName":"Arya","lastName":"Stark","organization":"Winterfell","type":"Citizen","service":"Council Tax","queuedDate":"2017-05-01 00:00:00"},{"id":"3","firstName":null,"lastName":null,"organization":null,"type":"Anonymous","service":"Council Tax","queuedDate":"2017-05-18 15:18:43"},{"id":"4","firstName":"John","lastName":"Snow","organization":"Winterfell","type":"Citizen","service":"Rent","queuedDate":"2017-05-18 15:18:43"},{"id":"5","firstName":"John","lastName":"Smith","organization":null,"type":"Citizen","service":"Rent","queuedDate":"2017-05-18 15:18:43"},{"id":"6","firstName":"Steve","lastName":"Harris","organization":"Iron Maiden","type":"Citizen","service":"","queuedDate":"2017-05-18 15:18:43"},{"id":"7","firstName":"John","lastName":"Petrucci","organization":"Dream Theater","type":"Citizen","service":"Council Tax","queuedDate":"2017-05-18 15:18:43"},{"id":"8","firstName":"Steve","lastName":"Vai","organization":null,"type":"Citizen","service":"Council Tax","queuedDate":"2017-05-18 15:18:43"},{"id":"9","firstName":null,"lastName":null,"organization":null,"type":"Anonymous","service":"Rent","queuedDate":"2017-05-18 15:18:43"},{"id":"10","firstName":null,"lastName":null,"organization":null,"type":"Anonymous","service":"","queuedDate":"2017-05-18 15:18:43"},{"id":"15","firstName":"frederick","lastName":"carter","organization":"ethical","type":"Citizen","service":"Rent","queuedDate":"2017-05-18 21:44:22"},{"id":"16","firstName":"frederick","lastName":"carter","organization":"ethical","type":"Citizen","service":"Rent","queuedDate":"2017-05-18 21:46:20"},{"id":"25","firstName":"david","lastName":"jones","organization":"westminster university","type":"Anonymous","service":"Council Tax","queuedDate":"2017-05-18 22:06:55"},{"id":"26","firstName":"Jason","lastName":"John","organization":"Greenwich University","type":"Citizen","service":"","queuedDate":"2017-05-18 22:17:49"},{"id":"27","firstName":"Jason","lastName":"John","organization":"Greenwich University","type":"Citizen","service":"Benefits","queuedDate":"2017-05-18 22:19:04"},{"id":"28","firstName":"Jason","lastName":"John","organization":"Greenwich University","type":"Citizen","service":"Benefits","queuedDate":"2017-05-18 22:21:15"},{"id":"29","firstName":"Andrew","lastName":"Carter","organization":"Job Centre","type":"Citizen","service":"Benefits","queuedDate":"2017-05-18 22:22:00"},{"id":"30","firstName":"Andrew","lastName":"Carter","organization":"Job Centre","type":"Citizen","service":"Benefits","queuedDate":"2017-05-18 22:32:46"},{"id":"31","firstName":"Andrew","lastName":"Carter","organization":"Job Centre","type":"Citizen","service":"Benefits","queuedDate":"2017-05-18 22:33:03"},{"id":"32","firstName":"Michael","lastName":"Carter","organization":"Apprentice","type":"Anonymous","service":"Council Tax","queuedDate":"2017-05-18 22:35:06"}]
