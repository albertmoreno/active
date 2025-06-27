<?php

function debug($a) {
	echo "<pre>".print_r($a)."</pre>";
}

function logmsg($a) {
	$msg = date('Y-m-d H:i:s'). ": " . print_r($a, true)."\n";
	file_put_contents('api.log', $msg, FILE_APPEND);
}

function view($content, $mime = 'html') {
    if ($mime == 'json') {
        header('Content-Type: application/json');
        echo json_encode($content);
    } else {
        echo $content;
    }
}

if (!function_exists("array_key_last")) {
	function array_key_last($arr) {
		end($arr);
		return key($arr);
	}

}
