<?php
session_start();
    include 'components/connections.php'; // eto yung binago ko 10:36AM. kapag ayaw gumana, ilagay sa admin-forms yong connections

    if(empty($_SESSION['id'])):
        header('Location: admin-signin.php');
    endif;
?>

<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/067d14b27b.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="styles/dashboard-styles/header.css">
    <link rel="stylesheet" href="styles/dashboard-styles/left-nav.css">
    <link rel="stylesheet" href="styles/dashboard-styles/tables-charts.css">

    <link rel="icon" type="image/x-icon" href="img/urslogo.png">

    <title>URS Archive | Dashboard</title>

</head>

<body>

    <nav>
        <div class="header-nav">
            <div class="left-section">
                <div class="search-container">
                    <input type="text" class="search-input" placeholder="Search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
            </div>

            <div class="right-section">
                <div class="user-info-container" id="showHide-btn" onclick="showDiv()">
                    <div class="user-icon-container">
                        <i class="fa-solid fa-user-gear fa-lg fa-inverse"></i>
                    </div>
                    <div class="user-accountid">
                        <?php
                            echo $_SESSION['id'];
                        ?>
                    </div>
                    <div class="dropdown-content" id="dropDown-div">
                        <div class="user-accountid-dropdown">
                            <i class="fa-solid fa-id-badge"></i> 
                            <?php
                                echo $_SESSION['id'];
                            ?>
                        </div>
                        <button class="myaccount-btn">
                            <i class="fa-solid fa-circle-user"></i>
                            My Account
                        </button>

                        <a href='components/logout.php'>
                        <button class="logout-btn">
                            <i class="fa-solid fa-arrow-right-from-bracket"></i>
                            Logout
                        </button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
   
    </nav>

    <div class="left-nav ">
        <div class="logo-title-container ">
            <img src="img/urslogo.png" alt=" " class="urslogo ">
            <p class="title ">ADMINISTRATOR</p>
        </div>

        <a href="# " class="general-link ">
            <div class="dashboard-container ">
                <i class="fa-solid fa-gauge fa-lg dashboard-icon "></i>
                <p class="dashboard-button ">Dashboard
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="# " class="general-link ">
            <div class="list-container ">
                <i class="fa-solid fa-list-check fa-lg "></i>
                <p class="list-button ">Uploaded Theses
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="# " class="general-link ">
            <div class="account-container ">
                <i class="fa-solid fa-user-pen fa-lg"></i>
                <p class="account-button ">Accounts
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

    </div>

    <div class="body-container">
        <div class="table-container">
            <div class="thesis-container">
                <div class="table-title">
                    Total Uploaded Theses
                </div>
                <div class="total-count">
                    420
                </div>
                <div class="icon-container">
                    <i class="fa-solid fa-book fa-lg"></i>
                </div>
            </div>

            <div class="users-container">
                <div class="table-title">
                    Total Accounts
                </div>
                <div class="total-count">
                    69
                </div>
                <div class="icon-container">
                    <i class="fa-solid fa-users fa-lg"></i>
                </div>
            </div>
        </div>

        <div class="charts-container">
            <div class="department-container">
                <div class="chart-title-container-dept">
                    <div class="chart-title">
                        Uploaded Theses: <strong>Department</strong>
                    </div>
                </div>
            </div>

            <div class="course-container">
                <div class="chart-title-container-cour">
                    <div class="chart-title">
                        Uploaded Theses: <strong>Course</strong>
                    </div>
                </div>
            </div>

            <div class="experts-end-users-container">
                <div class="chart-title-container-exp">
                    <div class="chart-title">
                        <strong>Experts</strong> & <strong>End-Users</strong>
                    </div>
                </div>
            </div>
        </div>

        <script>
            function showDiv() {
                var x = document.getElementById("dropDown-div");

                if (x.style.display == 'block') {
                    x.style.display = 'none';
                } else {
                    x.style.display = 'block';
                }

            }
        </script>
</body>