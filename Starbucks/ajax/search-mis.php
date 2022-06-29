<?php
    // Lykos Manolis
    $ssn = $_GET['ssn'];
    $ucn = $_GET['ucn'];
    $id = $_GET['id'];
    $tin = $_GET['tin'];

    $con = new mysqli("localhost","root","","voucher_db");
    if($con -> connect_error) {
        die();
    }
    $stmt = $con -> prepare("SELECT * FROM starbucks_mis WHERE ssn=? AND unemp_card_num=? AND id=? AND tin=?");
    $stmt->bind_param('ssss', $ssn, $ucn, $id, $tin);
    $stmt->execute();
    $result = $stmt -> get_result();
    $rows = $result -> fetch_all(MYSQLI_ASSOC);

    echo json_encode($rows);
    $stmt -> close();
    $con -> close();
?>