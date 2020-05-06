<?php
    session_start();
?>

<?php
    $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 169.254.255.118)(PORT = 1521)) ) (CONNECT_DATA = (SID = RAAFEY) ) )"; 
    $db_user = "raafey"; 
    $db_pass = "1234"; 
    $con = oci_connect($db_user, $db_pass, $db_sid);

    $WID = $_POST["ward"];
    $SQL_Select = "Select * From ward Where wardID='$WID'";
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
        <title>Ward Report</title>
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
            <h2 style="text-align: center;">Ward Record</h2>
            <br>
            <?php
                $WID = $_POST["ward"];
                $SQL_Select = "Select w.wardID, w.wardName, s.specialityName
                FROM ward w JOIN speciality s
                ON w.specialityID = s.specialityID
                WHERE w.wardID = $WID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($WardInfo = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $WDID = $WardInfo[0];
                    $WName = $WardInfo[1];
                    $WSP = $WardInfo[2];
                }

                $SQL_Select = "Select nurseName
                FROM nurse
                WHERE nurseID IN (
                                    SELECT daySisterID
                                    FROM ward_shift
                                    WHERE wardID = $WID
                                )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($DNurse = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                    $DayN = $DNurse[0];

                $SQL_Select = "Select nurseName
                FROM nurse
                WHERE nurseID IN (
                                    SELECT nightSisterID
                                    FROM ward_shift
                                    WHERE wardID = $WID
                                )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($NNurse = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                    $NightN = $NNurse[0];

                echo "<h3 style='text-align: left;'>Ward ID: $WDID</h3>";
                echo "<h3 style='text-align: left;'>Ward Name: $WName"
                ."<span style='float:right;'>Specialty: $WSP</span></h3>";
                echo "<h3 style='text-align: left;'>Day Sister: $DayN"
                ."<span style='float: right'>Night Sister: $NightN </span></h3>";
                echo "<h3 style='text-align: center;'>Staff Nurses</h3>";
                $SQL_Select = "Select nurseName
                FROM nurse
                WHERE isRegistered = 'T' AND careunitID IN (
                                        SELECT careunitID
                                        FROM care_unit
                                        WHERE wardID = $WID )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($StaffN = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $NurseName = $StaffN[0];
                    echo "<h4 style='text-align: center'>$NurseName</h4>";
                }

                echo "<br><h3 style='text-align: center;'>Non Registered Nurses</h3>";
                $SQL_Select = "Select nurseName
                FROM nurse
                WHERE isRegistered = 'F' AND careunitID IN (
                                        SELECT careunitID
                                        FROM care_unit
                                        WHERE wardID = $WID )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($NonN = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $NurseName = $NonN[0];
                    echo "<h4 style='text-align: center'>$NurseName</h4>";
                }

                echo "<hr>";
                echo "<h3 style='text-align: center'>Patient Information</h3>";
                echo "<table style='font-size: 110%; width: 100%; text-align: center;'>
                        <tr>
                            <th>Patient ID</th>
                            <th>Patient Name</th>
                            <th>Care Unit</th>
                            <th>Bed ID</th>
                            <th>Consultant</th>
                            <th>Date Admitted</th>
                        </tr>";
                $SQL_Select = "Select p.patientID, p.patientName, cu.careUnitName, pa.bedid, d.consultantID, to_char(pa.admissionDate, 'dd Mon yyyy')
                FROM patient p JOIN patient_admission pa
                ON p.patientID = pa.patientID
                JOIN care_unit cu
                ON cu.careunitID = pa.careunitID
                JOIN consultant_team d
                ON p.doctorID = d.staffID
                WHERE cu.careunitID IN (
                                            SELECT careunitID
                                            FROM care_unit
                                            WHERE wardID  = $WID )";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($Patients = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $PnID = $Patients[0];
                    $PName = $Patients[1];
                    $CU = $Patients[2];
                    $BedID = $Patients[3];
                    $Cons = $Patients[4];
                    $DAdmit = $Patients[5];
                    echo "<tr>
                            <td>$PnID</td>
                            <td>$PName</td>
                            <td>$CU</td>
                            <td>$BedID</td>
                            <td>$Cons</td>
                            <td>$DAdmit</td>
                        </tr>";
                }
                echo "</table>";
            ?>
        </div>
    </body>
</html>