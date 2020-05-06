<?php
    session_start();
?>

<?php
    $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 169.254.255.118)(PORT = 1521)) ) (CONNECT_DATA = (SID = RAAFEY) ) )"; 
    $db_user = "raafey"; 
    $db_pass = "1234"; 
    $con = oci_connect($db_user, $db_pass, $db_sid);

    $PID = $_POST["patient"];
    $SQL_Select = "Select * From Patient Where patientID='$PID'";
    $QueryID = oci_parse($con, $SQL_Select);
    $RunQ = oci_execute($QueryID);
    $itr = 0;
    while($Row = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
        $itr+=1;
    if($itr==0)
    {
        echo "<script>\n";
        echo "alert(\"Patient Does not Exist\");\n";
        echo "window.location='Admin.php'";
        echo "</script>";
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Patient Report</title>
        <link rel="icon" type="image/png" href="IPHospitalB.png">
        <style>
            .Header {
                display: block;
			    margin-left: auto;
		    	margin-right: auto;
                width: 70%;
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

            .Dropdown {
                float: left;
                overflow: hidden;
            }

            .Dropdown2 {
                float: left;
                overflow: hidden;
            }

            .Dropdown .DropButton {
                font-size: 20px;    
                border: none;
                outline: none;
                color: white;
                padding: 20px 20px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .Dropdown2 .DropButton2 {
                font-size: 20px;    
                border: none;
                outline: none;
                color: white;
                padding: 20px 20px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .Bar a:hover, .Dropdown:hover .DropButton {
                background-color: rgb(65, 89, 163);
            }

            .Bar a:hover, .Dropdown2:hover .DropButton2 {
                background-color: rgb(65, 89, 163);
            }

            .DropLinks {
                display: none;
                position: absolute;
                background-color: rgb(249, 249, 249);
                min-width: 200px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .DropLinks2 {
                display: none;
                position: absolute;
                background-color: rgb(249, 249, 249);
                min-width: 200px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .DropLinks a {
                float: none;
                color: black;
                padding: 20px 20px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .DropLinks2 a {
                float: none;
                color: black;
                padding: 15px 15px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .DropLinks a:hover {
                background-color: rgb(221, 221, 221);
            }

            .DropLinks2 a:hover {
                background-color: rgb(221, 221, 221);
            }

            .Dropdown:hover .DropLinks {
                display: block;
            }

            .Dropdown2:hover .DropLinks2 {
                display: block;
            }

            .PatientR {
                width: 80%;
                font-family: Arial, Helvetica, sans-serif;
				margin: auto;
				padding: 25px;
				border-radius: 10px;
				background-color: rgb(237, 239, 242);
				box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            th, td {
                padding: 2%;
            }
        </style>
    </head>
    <body>
        <a href="Admin.php"><img class="Header" src="Admin.png"/></a>
        <br><br>
        <div class="Bar">
            <a href="Admin.php">Main Page</a>
            <div class="Dropdown">
                <button class="DropButton">Records</button>
                <div class="DropLinks">
                    <a href="PatientID.php">Patient Record</a>
                    <a href="WardID.php">Ward Record</a>
                    <a href="ConsultantID.php">Consultant Team Record</a>
                </div>
            </div> 
            <div class="Dropdown2">
                <button class="DropButton2">Insert New Data</button>
                <div class="DropLinks2">
                    <a href="#">Ward</a>
                    <a href="#">Care Unit</a>
                    <a href="#">Doctor</a>
                    <a href="#">Nurse</a>
                    <a href="#">Patient</a>
                    <a href="#">Treatment</a>
                </div>
            </div>
            <a href="LoginPage.php" style="float: right;">Logout</a>
        </div>
        <br>
        <div class="PatientR">
            <h1 style="text-align: center;">Ivor Paine Hospital</h1>
            <h2 style="text-align: center;">Patient Record</h2>
            <br>
            <?php
                $PatID = $_POST["patient"];
                $SQL_Select = "Select patientID, patientName, to_char(dateOfBirth, 'dd Mon yyyy')
                FROM patient
                WHERE patientID = $PatID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($PatientInfo = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $PID = $PatientInfo[0];
                    $PName = $PatientInfo[1];
                    $PDOB = $PatientInfo[2];
                }
                $SQL_Select = "Select doctorName
                FROM doctor
                WHERE staffID IN (
                                SELECT consultantID
                                FROM consultant_team
                                WHERE staffID IN (
                                                    SELECT doctorID
                                                    FROM patient
                                                    WHERE patientID = $PatID
                                                )
                                )";
                $CName = "None";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($ConsultantName = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                    $CName = $ConsultantName[0];

                $SQL_Select = "Select staffID, doctorName
                FROM doctor
                WHERE staffID IN (
                                    SELECT doctorID
                                    FROM patient
                                    WHERE patientID = $PatID
                                )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($DoctorInfo = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $DID = $DoctorInfo[0];
                    $DName = $DoctorInfo[1];
                }

                echo "<h3 style='text-align: left;'>Patient ID: $PID"
                ."<span style='float:right;'>DoctorID: $DID </span></h3>";
                echo "<h3 style='text-align: right'>Doctor Name: $DName </h3>";
                echo "<h3 style='text-align: right'>Consultant: $CName </h3><br>";
                echo "<h3 style='text-align: left;'>Patient Name: $PName"
                ."<span style='float:right;'>Date of Birth: $PDOB</span></h3>";
                echo "<hr>";
                echo "<h3 style='text-align: center'>Medical History</h3>";

                echo "<table style='font-size: 110%; width: 100%; text-align: center;'>
                        <tr>
                            <th>Complaint ID</th>
                            <th>Treatment ID</th>
                            <th>Doctor ID</th>
                            <th>Date Treatment Started</th>
                            <th>Date Treatment Ended</th>
                        </tr>";

                $SQL_Select = "Select c.complaintID, t.treatmentID, d.doctorName, to_char(ct.treatmentStartDate, 'dd Mon yyyy'), to_char(ct.treatmentEndDate, 'dd Mon yyyy')
                FROM complaint c JOIN complaint_treatment ct
                ON c.complaintID = ct.complaintID
                JOIN doctor d
                ON d.staffID = ct.staffID
                JOIN treatment t
                ON t.treatmentID = ct.treatmentID
                WHERE c.patientID = $PatID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($TreatmentInfo = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $CID = $TreatmentInfo[0];
                    $TID = $TreatmentInfo[1];
                    $DName = $TreatmentInfo[2];
                    $Start = $TreatmentInfo[3];
                    $End = $TreatmentInfo[4];
                    echo "<tr>
                            <td>$CID</td>
                            <td>$TID</td>
                            <td>$DName</td>
                            <td>$Start</td>
                            <td>$End</td>
                        </tr>";
                }
                echo "</table>";
            ?>
        </div>
    </body>
</html>