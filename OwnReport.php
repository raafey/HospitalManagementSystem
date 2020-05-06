<?php
    session_start();
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

            .Bar a:hover {
                background-color: rgb(65, 89, 163);
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
        <a href="Patient.php"><img class="Header" src="Patient.png"/></a>
        <br><br>
        <div class="Bar">
            <a href="Patient.php">Main Page</a>
            <a href="OwnReport.php">View Patient Report</a>
            <a href="Complaint.php">Add Complaint</a>
            <a href="LoginPage.php" style="float: right;">Logout</a>
        </div>
        <br>
        <div class="PatientR">
            <h1 style="text-align: center;">Ivor Paine Hospital</h1>
            <h2 style="text-align: center;">Patient Record</h2>
            <br>
            <?php
                $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = DESKTOP-INVLLJ6)(PORT = 1521)) ) (CONNECT_DATA = (SID = orcl) ) )"; 
                $db_user = "mashood"; 
                $db_pass = "1234"; 
                $con = oci_connect($db_user, $db_pass, $db_sid);

                $PatID = $_SESSION["username"];
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