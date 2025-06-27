<?php
include('functions.php');

$codes = [
    'verify1' => '321',
    'verify2' => '573',
    'verify3' => '092',
    'verify4' => '468',
    'verify5' => '204',
    'verify6' => '-53,73',
];

if (isset($_GET['start'])) {
    view(file_get_contents('../views/start.html'), 'html');
}
if (isset($_GET['page1'])) {
    view(file_get_contents('../views/page1.html'), 'html');
}
if (isset($_GET['fail'])) {
    view(file_get_contents('../views/fail.html'), 'html');
}

if (isset($_GET['verify'])) {
    $res = ['success' => false];
    $code = $_POST['code'];
    $num = $_POST['num'];
    if ($code == $codes['verify' . $num]) {
        $res['finish'] = ('verify' . $num === array_key_last($codes));
        $num++;
        $res['num'] = $num;
        $res['success'] = true;
        $res['html'] = file_get_contents('../views/page' . $num . '.html');
    } else {
    }
    view($res, 'json');
}
