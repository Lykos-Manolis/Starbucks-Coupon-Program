<?php
    // Lykos Manolis
    $ssn = $_GET['ssn'];

    $con = new mysqli("localhost","root","","voucher_db");
    if($con -> connect_error) {
        die();
    }
    $stmt = $con -> prepare("SELECT * FROM voucher WHERE ssn=?");
    $stmt->bind_param("s",$ssn);
    $stmt->execute();
    $result = $stmt -> get_result();
    $rows = $result -> fetch_all(MYSQLI_ASSOC);

    echo json_encode($rows);
    $stmt -> close();
    $con -> close();
?>