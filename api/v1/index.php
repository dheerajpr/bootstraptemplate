<?php
require '.././libs/Slim/Slim.php';
require_once 'dbHelper.php';



// Get Slim instance
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();
$app = \Slim\Slim::getInstance();

// call dbHelper class
$db = new dbHelper();


$app->get('/languages', function() { 
    global $db;
    $rows = $db->select("languages","id,language",null,null);
     
    // parent categories node
    $categories = array();

    foreach ($rows["data"] as $row) {
        
        $category = array(); // temp array
        $category["id"] = $row["id"];
        $category["language"] = $row["language"];
        
        // pushing sinlge category into parent
        array_push($categories, $category);
    }
    echoResponse(200, $categories);

});


$app->get('/frameworks', function() { 

    global $db;
    $app1 = new \Slim\Slim();
    $languageid = $app1->request()->params('language_id');
    
    $rows = $db->select("frameworks","id,framework_name",array('language_id'=>$languageid),null);
     
    // parent categories node
    $categories = array();

    foreach ($rows["data"] as $row) {
        
        $category = array(); // temp array
        $category["id"] = $row["id"];
        $category["framework_name"] = $row["framework_name"];
        
        // pushing sinlge category into parent
        array_push($categories, $category);
    }
    
    echoResponse(200, $categories);

});

function echoResponse($status_code, $response) {
    global $app;
    $app->status($status_code);
    $app->contentType('application/json');
    echo json_encode($response,JSON_NUMERIC_CHECK);
}

$app->run();
?>