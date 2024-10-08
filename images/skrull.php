<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skrull That IP</title>
<style>
        * {
        box-sizing: border-box;
        }

        body {
            margin: 5px;
            padding: 5px;
            align-items: left;
            justify-content: left;
            background: url('anonymous.jpg') no-repeat center center fixed;
            background-size: cover;
            color: white;
        }

        h1   {
            margin: 5px;
            padding: 5px;
            font-family: spectral;
            font-size: 30px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
            color: white;
        }

        p   {
            margin: 5px;
            padding: 5px;
            font-family: verdana;
            font-size: 24px;
            color: white;
        }

        img  {
            border-radius: 30%;
            padding: 5px;
	        vertical-align:middle;
        }

        /* unvisited link */
        a:link {
            color: white;
        }

        /* visited link */
        a:visited {
            color: white;
        }

        /* mouse over link */
        a:hover {
            color: orange;
        }

        /* selected link */
        a:active {
            color: orange;
        }

	    input[type=text] {
 	    width: 50%;
        font-family: spectral;
        font-size: 24px;
  	    padding: 12px 20px;
  	    margin: 8px 0;
  	    box-sizing: border-box;
	}

	/* Create two equal columns that float next to each other */
        .column {
        float: left;
        width: 50%;
        padding: 10px;
        }

        /* Clear floats after the columns */
        .row:after {
        content: "";
        display: table;
        clear: both;
        }
    }
    </style>
  </head>
<body>
    <h1><a href="https://github.com/1on1security/skrull" target="_blank">Skrull</a> an IP Address through Intelligence Sources:</h1>
    <form method="post" action="">
        <input type="text" name="ip_address" placeholder="Enter IP Addresss" required>
        <button type="submit" style="height:80px;width:200px;font-family: verdana;font-size: 24px;">Submit</button>
	</form>

<div class="column">
<h1>Information Provider Reports</h1>
    <div>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Get the IP address from the form
            $ip_address = $_POST["ip_address"];

            // Validate IP address format
            if (!filter_var($ip_address, FILTER_VALIDATE_IP)) {
                echo "Invalid IP Address!";
            } else {
                // Execute the shell command with the provided IP address
                $output = shell_exec("sudo -u your_user [path_to_skrull]/skrull.bash " . escapeshellarg($ip_address));
	        	$output = nl2br($output);
                // Output the results
                echo "<p>$output</p>";
            }
        }
        ?>
    </div>
</div>

<div class="column">
<h1>abuseDB Observed/Reported Behaviors</h1>
<?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Get the IP address from the form
            $ip_address = $_POST["ip_address"];

            // Validate IP address format
            if (!filter_var($ip_address, FILTER_VALIDATE_IP)) {
                echo "Invalid IP Address!";
            } else {
                // Execute the shell command with the provided IP address
                $output = shell_exec("sudo -u your_user [path_to_skrull]skrull/abuseipdb.bash " . escapeshellarg($ip_address));
	            $output = nl2br($output);
                // Output the results
                echo "$output";
            }
        }
?>
</div>

</body>
</html>