<?php
session_start();

include 'components/connections.php';

function logUserActivity($user_id, $user_type, $activity_type, $activity_description) {
    global $con;
    $sql = "INSERT INTO user_activity_logs (user_id, user_type, activity_type, activity_description) VALUES (?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("isss", $user_id, $user_type, $activity_type, $activity_description);
    $stmt->execute();
}

if (isset($_SESSION['admin_id'])) {
    echo "<script>window.location.replace('dashboard-page/admin-dashboard.php');</script>";
}

if (isset($_POST['save'])) {
    $account_id = $_POST['account_id'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    $success = false;

    $sql_query = "SELECT acc_name FROM admin_accounts WHERE acc_id = '$account_id' AND username = '$username' AND password = '$password'";
    $result = $con->query($sql_query);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if ($row["acc_name"] > 0) {
                $success = true;
                $_SESSION["admin_id"] = $row["acc_name"];
            }
        }
    }
    if ($success == true) {
        // Log admin login event
        logUserActivity($_SESSION['admin_id'], 'admin', 'login', 'Admin logged in');

        echo "<script>
        window.location.replace('dashboard-page/admin-dashboard.php');
        </script>";
    } else {
        echo "<script>
                alert('Wrong Username or Password!')
                window.location.replace('admin-signin.php');; 
    </script>";
    }
    mysqli_close($con);
}
?>


<!DOCTYPE html>

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/admin-signin.css">
    <link rel="icon" type="image/x-icon" href="img/svci_logo.png">

    <title>SVCI Research and Development Archiving System | Administrator</title>

</head>

<body>

    <div class="section-grid">
        <div class="left-section">
            <div>

                    <img src="img/svci_logo.png" alt="" class="logo">

            </div>
            <div class="welcome-sidebar">
                <div class="welcome-label">SVCI Research and Development Archiving System</div>
                <div class="welcome-statement">Access most of the thesis accomplished by St. Vincent's College
                    Incorported - students and alumnis.</div>
            </div>
        </div>
        <div class="right-section">
            <div class="header">
                <div class="welcome-label-header-container">
                    <a href="index.php" class="link-index">
                        <div class="welcome-label-header">SVCI Research and Development Archiving System</div>
                    </a>
                    <div class="welcome-statement-header">Access most of the thesis accomplished by St. Vincent's
                        College Incorported - students and alumnis.</div>
                </div>
            </div>
            <form method="post" action="admin-signin.php">
                <div class="login-form-container">
                    <div class="administrator-label-container">
                        <p class="administrator-label">ADMINISTRATOR</p>
                    </div>
                    <div class="login-form">
                        <div class="login-input-container">
                            <input type="number" class="login-input-accountid" name="account_id"
                                placeholder="Account ID" required>
                        </div>

                        <div class="login-input-container">
                            <input type="text" class="login-input-username" name="username" placeholder="Username"
                                required>
                        </div>

                        <div class="login-input-container">
                            <input type="password" class="login-input-password" name="password" placeholder="Password"
                                id="login-input-password" required>
                        </div>

                        <input type="checkbox" id="show-password-button" class="show-password-button"
                            onclick="myFunction()">
                        <label for="show-password-button" class="show-password-label">Show password</label>

                        <div class="login-input-container">
                            <div class="login-button-container">
                                <button class="login-button" type="submit" name="save">SIGN IN</button>
                            </div>
                        </div>
                        <div class="login-input-container">
                            <a href="admin-forgot-pass.php" class="forgot-pass-button">
                                <div class="forgot-pass-label">Forgot password?</div>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("login-input-password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</body>

</html>