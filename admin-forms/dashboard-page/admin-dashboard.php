<?php
session_start();
    include '../components/connections.php'; 
    include '../components/dashboard-piechart.php'; 

    if(empty($_SESSION['admin_id'])):
        header('Location: ../admin-signin.php');
    endif;

    $sql_query = "SELECT program, count(8) as number FROM uploaded_thesis GROUP BY program";
    $result = $con->query($sql_query);

    function logUserActivity($user_id, $user_type, $activity_type, $activity_description) {
        global $db;
        $sql = "INSERT INTO user_activity_logs (user_id, user_type, activity_type, activity_description) VALUES (?, ?, ?, ?)";
        $stmt = $db->prepare($sql);
        $stmt->bind_param("isss", $user_id, $user_type, $activity_type, $activity_description);
        $stmt->execute();
    }
    

?>

<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/067d14b27b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
    <script type="text/javascript"> 
    
    $(window).resize(function() {
                  drawChart();
                  drawChart1();
                  drawChart2();
            });
    </script>

    <link rel="stylesheet" href="../styles/dashboard-styles/header.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/left-nav.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/tables-charts.css">

    <link rel="icon" type="image/x-icon" href="../img/svci_logo.png">

    <title>SVCI Research and Development Archiving System | Dashboard</title>

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
                            echo $_SESSION['admin_id'];
                        ?>
                    </div>
                    <div class="dropdown-content" id="dropDown-div">
                        <div class="user-accountid-dropdown">
                            <i class="fa-solid fa-id-badge"></i> 
                            <?php
                                echo $_SESSION['admin_id'];
                            ?>
                        </div>
                        <button class="myaccount-btn">
                            <i class="fa-solid fa-circle-user"></i>
                            My Account
                        </button>

                        <a href='../components/logout.php'>
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
            <img src="../img/svci_logo.png" alt=" " class="svcilogo ">
            <p class="title ">ADMINISTRATOR</p>
        </div>

        <a href="admin-dashboard.php" class="general-link ">
            <div class="dashboard-container ">
                <i class="fa-solid fa-gauge fa-lg dashboard-icon "></i>
                <p class="dashboard-button ">Dashboard
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="admin-thesis.php" class="general-link ">
            <div class="list-container ">
                <i class="fa-solid fa-list-check fa-lg "></i>
                <p class="list-button ">Uploaded Thesis
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="admin-accounts.php" class="general-link ">
            <div class="account-container">
                <i class="fa-solid fa-user-pen fa-lg"></i>
                <p class="account-button">Accounts
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>

        <a href="admin-log-manager.php" class="general-link ">
            <div class="log-container">
            <i class="fa-solid fa-clock fa-lg"></i>
                <p class="log-button">Log Manager
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>
    </div>

    <div class="body-container">
        <div class="table-container">
            <div class="thesis-container">
                <div class="table-title">
                    Total Uploaded Thesis
                </div>
                <div class="total-count">
                <?php
                    $query="SELECT ID FROM uploaded_thesis";

                    if ($results = mysqli_query($con,$query)) 
                        {
                          // Return the number of rows in result set
                        $thesisCount = mysqli_num_rows($results);
                        echo $thesisCount;
                        // Free result set
                        mysqli_free_result($results);
                    }
                        ?>
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
                    <?php
                        $sql="SELECT ID FROM admin_accounts UNION ALL SELECT ID FROM user_accounts";

                        if ($result = mysqli_query($con,$sql)) 
                          {
                          // Return the number of rows in result set
                          $rowCount = mysqli_num_rows($result);
                          echo $rowCount;
                          // Free result set
                          mysqli_free_result($result);
                          }
                        //   $con-> close();
                        ?>
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
                        Uploaded Thesis: <strong>Filtered by College Department</strong>
                    </div>
                </div>
                <div id="chart_wrap">
                    <div id="piechart-department"></div>
                </div>
            </div>

            <div class="program-container">
                <div class="chart-title-container-cour">
                    <div class="chart-title">
                        Uploaded Thesis: <strong>Filtered by  Program</strong>
                    </div>
                </div>            
                <div id="chart_wrap">
                    <div id="piechart"></div>
                </div>
            </div>

            <div class="experts-end-users-container">
                <div class="chart-title-container-exp">
                    <div class="chart-title">
                        <strong>Experts</strong> & <strong>End-Users</strong>
                    </div>
                </div>
                <div id="chart_wrap">
                    <div id="piechart-acctype"></div>
                </div>
            </div>
        </div>
 
        <script src="../scripts/dashboard.js"></script>
</body>