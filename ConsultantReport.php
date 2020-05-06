<?php
    session_start();
?>

<?php
    $db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = 169.254.255.118)(PORT = 1521)) ) (CONNECT_DATA = (SID = RAAFEY) ) )"; 
    $db_user = "raafey"; 
    $db_pass = "1234"; 
    $con = oci_connect($db_user, $db_pass, $db_sid);

    $CID = $_POST["consultant"];
    $SQL_Select = "Select * From doctor Where staffID='$CID'";
    $QueryID = oci_parse($con, $SQL_Select);
    $RunQ = oci_execute($QueryID);
    $itr = 0;
    while($Row = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
        $itr+=1;
    if($itr==0)
    {
        echo "<script>\n";
        echo "alert(\"Doctor Does not Exist\");\n";
        echo "window.location='Admin.php'";
        echo "</script>";
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Consultant Report</title>
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
            <h2 style="text-align: center;">Consultant Team Record</h2>
            <br>
            <?php
                $CID = $_POST["consultant"];
                $SQL_Select = "Select d.staffID, d.doctorName, p.positionName
                FROM doctor d JOIN doctor_positions p
                ON d.positionID = p.positionID
                WHERE d.staffID = $CID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($DoctorInfo = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $DocID = $DoctorInfo[0];
                    $DName = $DoctorInfo[1];
                    $DPos = $DoctorInfo[2];
                }

                $SQL_Select = "Select to_char(dateJoined, 'dd Mon yyyy')
                FROM consultant_team
                WHERE staffID = $CID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($DateQ = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                    $DateJ = $DateQ[0];

                echo "<h3 style='text-align: left;'>Staff ID: $DocID"
                ."<span style='float:right;'>Name: $DName</span></h3>";
                echo "<h3 style='text-align: left;'>Position: $DPos"
                ."<span style='float:right;'>Date Team Joined: $DateJ</span></h3>";
                echo "<hr>";
                echo "<h3 style='text-align: center'>Previous Experience</h3>";
                echo "<table style='font-size: 110%; width: 100%; text-align: center;'>
                        <tr>
                            <th>From Date</th>
                            <th>To Date</th>
                            <th>Position</th>
                            <th>Establishment</th>
                        </tr>";
                $SQL_Select = "Select to_char(startDate, 'dd Mon yyyy'), to_char(endDate, 'dd Mon yyyy'), position, establishment
                FROM doctor_experience
                WHERE staffID = $CID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($Experience = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $From = $Experience[0];
                    $To = $Experience[1];
                    $Position = $Experience[2];
                    $EST = $Experience[3];
                    echo "<tr>
                            <td>$From</td>
                            <td>$To</td>
                            <td>$Position</td>
                            <td>$EST</td>
                        </tr>";
                }
                
                echo "</table>";
                echo "<br><h3 style='text-align: center'>Progress</h3>";
                echo "<table style='font-size: 110%; width: 100%; text-align: center; border: 1px solid black;'>
                        <tr>
                            <th>Grade Date</th>
                            <th>Performance</th>
                        </tr>";
                $SQL_Select = "Select to_char(dateOfgrade, 'dd Mon yyyy'), grade
                FROM doctor_performance
                WHERE staffID = $CID";
                $QueryID = oci_parse($con, $SQL_Select);
                $RunQ = oci_execute($QueryID);
                while($Performance = oci_fetch_array($QueryID, OCI_BOTH+OCI_RETURN_NULLS))
                {
                    $GDate = $Performance[0];
                    $Grade = $Performance[1];
                    echo "<tr>
                            <td>$GDate</td>
                            <td>$Grade</td>
                        </tr>";
                }
                echo "</table>";
            ?>
        </div>
    </body>
</html>