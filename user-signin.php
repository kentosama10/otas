<?php
session_start();

include 'components/connections.php';

if (isset($_SESSION['id'])) {
    echo "<script>window.location.replace('index.php');</script>";
}

if (isset($_POST['save'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $success = false;

    $sql_query = "SELECT * FROM user_accounts WHERE username = '$username' AND password = '$password'";
    $result = $con->query($sql_query);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            if ($row["username"] > 0) {
                $success = true;
                $_SESSION["id"] = $row["username"];
            }
        }
    }
    if ($success == true) {
        echo "<script>
        window.location.replace('index.php');
        </script>";
    } else {

        echo "<script>
                alert('Wrong Username or Password!')
                window.location.replace('user-signin.php');
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
    <link rel="stylesheet" href="styles/signin-form.css">
    <link rel="icon" type="image/x-icon" href="img/svci_logo.png">

    <title>SVCI Research and Development Archiving System | Sign in</title>

</head>

<body>

    <div class="section-grid">
        <div class="left-section">
            <div>
                <!-- <a href="admin-forms/admin-signin.php" id="logo-link"> -->
                    <img src="img/svci_logo.png" alt="" class="logo">
                </a>
            </div>
            <!-- <script>
                let logoLink = document.getElementById('logo-link');
                let clickCount = 0;

                logoLink.addEventListener('click', function (event) {
                    event.preventDefault(); // prevent default link behavior
                    clickCount++;

                    if (clickCount === 5) {
                        window.location.href = 'admin-forms/admin-signin.php'; // redirect to the desired path
                    }
                }); -->
            </script>
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
            <form action="" method="post">
                <div class="signin-form-container">
                    <div class="signin-label-container">
                        <p class="signin-label">SIGN IN</p>
                    </div>
                    <div class="signin-form">

                        <div class="signin-input-container">
                            <input type="text" class="signin-input-username" placeholder="Username" name="username"
                                required>
                        </div>

                        <div class="signin-input-container">
                            <input type="password" class="signin-input-password" placeholder="Password" name="password"
                                id="signin-input-password" required>
                        </div>

                        <input type="checkbox" id="show-password-button" class="show-password-button"
                            onclick="myFunction()">
                        <label for="show-password-button" class="show-password-label">Show password</label>

                        <div class="signin-input-container">
                            <div class="signin-button-container">
                                <button class="signin-button" type="submit" name="save">SIGN IN</button>
                            </div>
                        </div>
                        <div class="signin-input-container">
                            <a href="user-forgot-pass.php" class="forgot-pass-button">
                                <div class="forgot-pass-label">Forgot password?</div>
                            </a>
                        </div>
                        <div class="signin-input-container">
                            <a href="user-signup.php" class="signup-button">
                                <div class="signup-label">
                                    Don't have an account? Sign up here
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <script>
        function myFunction() {
            var x = document.getElementById("signin-input-password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
</body>

</html>