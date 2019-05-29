<?php
/**
 * Created by PhpStorm.
 * User: Klemo
 * Date: 18-Apr-19
 * Time: 19:33
 */

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//Initialize database connection 'conn'
require_once 'config.php';

/*Case insensitive string compare -> method = POST*/
if(strcasecmp($_SERVER['REQUEST_METHOD'],'POST') == 0){
    //Receive the RAW post data.
    $rawData = trim(file_get_contents("php://input"));
    //Attempt to decode the incoming RAW post data from JSON.
    $data = json_decode($rawData, true);

    //If json_decode failed, the JSON is invalid.
    if (!is_array($data)) {
        throw new Exception('Received content contained invalid JSON!');
    }

    //Put the data into database

    /*
     *  data = {
        'ip':ip,
        'country':country,
        'countryCode':countryCode,
        'city':city,
        'lat':lat,
        'lon':lon,
        'page':page
    };
     * */
    //echo geoip_time_zone_by_country_and_region($data['countryCode']);


    $sql = "INSERT INTO VISITS (ip, country, city, date, time, lat, lon, country_code,page)
            VALUES ('".$data['ip']."', '".$data['country']."', '".$data['city']."',DATE(NOW()),TIME(NOW()),
            '".$data['lat']."','".$data['lon']."','".$data['countryCode']."','".$data['page']."')";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
  $conn->close();
}
/*Case insensitive string compare -> method = GET*/
elseif (strcasecmp($_SERVER['REQUEST_METHOD'],'GET') == 0){
    //Service for first table data
    $responseData = array();

    if(isset($_GET['service'])){
        if($_GET['service'] == 1){
            $sql = 'SELECT country,country_code,COUNT(*) AS count FROM VISITS GROUP BY country,country_code';
        }
        elseif ($_GET['service'] == 2){
            $sql = 'SELECT DISTINCT ip,lat,lon FROM VISITS';
        }
        elseif ($_GET['service'] == 3){
            $sql = 'SELECT page,COUNT(*) AS visits FROM VISITS GROUP BY page';

        }
        elseif ($_GET['service'] == 4){
            $sql = 'SELECT time FROM VISITS';
        }


        //Service 1 and 2 routine

        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                array_push($responseData,$row);
            }
            echo json_encode($responseData);
        } else {
            echo "Error : 0 results from DB";
        }


        }


    $conn->close();
}
/*request method error*/
else {
    throw new Exception('REQUEST_METHOD_ERROR: Bad request method!');
}