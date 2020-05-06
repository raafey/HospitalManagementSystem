<?php
    session_start();
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Patient Main Page</title>
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
        <h1>Welcome Patient<h1>
    </body>
</html>