<?php
    // Lykos Manolis
    $fname = $_GET['fname'];
    $lname = $_GET['lname'];
    $patronym = $_GET['patronym'];
    $bd = $_GET['bd'];
    $id = $_GET['id'];
    $ssn = $_GET['ssn'];
    $tin = $_GET['tin'];
    $ucn = $_GET['ucn'];
    $unempDuration = $_GET['unempDuration'];
    $voucherCode = $_GET['voucherCode'];

    $con = new mysqli("localhost","root","","voucher_db");
    if($con -> connect_error) {
        die();
    }
    $stmt = $con -> prepare("INSERT INTO voucher(ssn, id, tin, fname, lname, patronym, birth_date, unemp_card_num, unemp_duration, voucherCode) VALUES (?,?,?,?,?,?,?,?,?,?)");
    $stmt->bind_param('ssssssssss', $ssn, $id, $tin, $fname, $lname, $patronym, $bd, $ucn, $unempDuration, $voucherCode);
    $stmt->execute();
    $stmt -> close();
    $con -> close();
?>