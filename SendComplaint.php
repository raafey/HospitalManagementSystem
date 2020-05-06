<?php
    session_start();
?>

<?php
    $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 169.254.255.118)(PORT = 1521)) ) (CONNECT_DATA = (SID = RAAFEY) ) )"; 
    $db_user = "raafey"; 
    $db_pass = "1234"; 
    $con = oci_connect($db_user, $db_pass, $db_sid);

    $PID = $_SESSION["username"];
    $SQL_Select = "Select MAX(ComplaintID) From complaint";
    $QueryID = oci_parse($con, $SQL_Select);
    $RunQ = oci_execute($QueryID);
    while($Row = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
        $ComID = $Row[0];
    $ComID+=1;
?>

<!DOCTYPE html>
<html>
    <head>
        <title>New Complaint</title>
        <link rel="icon" type="image/png" href="IPHospitalB.png">
        <style>
            .Header {
                display: block;
			    margin-left: auto;
		    	margin-right: auto;
                width: 70%;
            }

            h1 {
                text-align: center;
                font-size: 50px;
                font-family: Arial, Helvetica, sans-serif;
                font-style: italic
            }

            .Bar {
                overflow: hidden;
                background-color: rgb(15, 41, 119);
                font-family: Arial, Helvetica, sans-serif;
            }

            .Bar a {
                float: left;
                font-size: 20px;
                color: white;
                text-align: center;
                padding: 20px 20px;
                text-decoration: none;
            }

            .Bar a:hover {
                background-color: rgb(65, 89, 163);
            }
        </style>
    </head>
    <body>
        <a href="Patient.php"><img class="Header" src="Patient.png"/></a>
        <br><br>
        <div class="Bar">
            <a href="Patient.php">Main Page</a>
            <a href="OwnReport.php">View Patient Report</a>
            <a href="Complaint.php">Add Complaint</a>
            <a href="LoginPage.php" style="float: right;">Logout</a>
        </div>
        <br><br>
        <?php
            $PID = $_SESSION["username"];
            $ComD = $_POST["complaint"];
        
            $Query = "Insert INTO complaint
                    VALUES ($ComID, '$ComD', $PID)";
            
            $QueryP = oci_parse($con, $Query); 
        
            $QRun = oci_execute($QueryP);
            if($QRun)
                echo "<h1>Complaint Sent<h1>";
            else
                echo "<h1>Error While Sending Complaint<h1>";
        ?>
    </body>
</html>