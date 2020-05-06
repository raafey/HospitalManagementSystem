<?php
    $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 169.254.255.118)(PORT = 1521)) ) (CONNECT_DATA = (SID = RAAFEY) ) )"; 
    $db_user = "raafey"; 
    $db_pass = "1234"; 
    $con = oci_connect($db_user, $db_pass, $db_sid); 
    /*if($con) 
        echo "Oracle Connection Successful.";
    else 
        die('Could not connect to Oracle: ');*/

    session_start();

    $UName = $_POST["username"];
    $Password = $_POST["password"];

    $_SESSION["username"] = $UName;
    $_SESSION["password"] = $Password;

    if(($UName=="admin") && ($Password=="admin"))
    {
        header("Location: Admin.php");
    }
    else if($Password=="patient")
    {
        $SQL_Select = "Select * From Patient Where patientID='$UName'";
        $QueryID = oci_parse($con, $SQL_Select);
        $RunQ = oci_execute($QueryID);
        $itr = 0;
        while($Row = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
            $itr+=1;
        if($itr==0)
        {
            echo "<script>\n";
            echo "alert(\"Invalid Login Username or Password\");\n";
            echo "window.location='LoginPage.php'";
            echo "</script>";
        }
        else
            header("Location: Patient.php");
    }
    else
    {
        echo "<script>\n";
        echo "alert(\"Invalid Login Username or Password\");\n";
        echo "window.location='LoginPage.php'";
        echo "</script>";
    }
?>