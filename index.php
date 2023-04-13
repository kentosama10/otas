<?php
session_start();
    include 'components/connections.php';

    if(empty($_SESSION['id'])):
        header('Location: user-signin.php');
    endif;
?>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/067d14b27b.js" crossorigin="anonymous"></script>

    <link rel="shortcut icon" href="img/urslogo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/index.css">

    <title>URS Archive | Home</title>


</head>

<body>
    <nav class="nav-options nav-wrapper white">
        <div class="container">
            <a href="" class=""><img src="img/urslogo.png" alt="urslogo" class="hide-on-med-and-down urslogo"></a>
            <a href="" class="brand-logo black-text">URS Archive</a>
            <a href="#" class="sidenav-trigger" data-target="mobile-links">
                <i class="material-icons black-text">menu</i>
            </a>
            <ul class="navbutton right hide-on-med-and-down" id="navbutton">
                <li id="home">
                    <a href="#" class="home-btn btn-large white waves-effect waves-dark z-depth-0">
                        <span>Home</span>
                    </a>
                </li>

                <li id="course">
                    <a href="# " data-target="dropdown" class="courses-btn dropdown-trigger btn-large white waves-effect waves-dark z-depth-0">
                        <span>Courses</span>
                        <i class="material-icons right arrow-icon">arrow_drop_down</i>
                    </a>
                    <ul class="dropdown-content dropdown-course" id="dropdown">
                        <li><a href="#">BSCPE</a></li>
                        <li><a href="#">BSCE</a></li>
                        <li><a href="#">BEED</a></li>
                        <li><a href="#">BSE</a></li>
                        <li><a href="#">BSBA Human Resource</a></li>
                        <li><a href="#">BSBA Marketing</a></li>
                        <li><a href="#">BSOA</a></li>
                        <li><a href="#">BSHM</a></li>
                        <li><a href="#">BSTM</a></li>
                    </ul>
                </li>

                <li id="about">
                    <a href="# " class="about-btn btn-large white waves-effect waves-dark z-depth-0">
                        <span>About</span>
                    </a>
                </li>
                <li id="login" class="right">
                    <a href="# " data-target="dropdown-account" class="login-btn dropdown-account btn-large white waves-effect waves-dark z-depth-0">
                        <span>
                        <?php
                            echo $_SESSION['id']; 
                        ?>
                        </span>
                        <i class="material-icons left blue-text text-darken-4 ">person</i>
                        <i class="material-icons right arrow-icon">arrow_drop_down</i>
                    </a>
                    <ul class="dropdown-content dropdown-content-account" id="dropdown-account">
                        <li>
                            <a href="#">
                                <span class="center">My Account</span>
                                <i class="material-icons left green-text text-darken-3">account_circle</i>
                            </a>
                        </li>
                        <li>
                        <a href="components/logout.php">
                            <span class="center">Logout</span>
                            <i class="material-icons left red-text text-darken-3">logout</i>
                        </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    <ul class="sidenav" id="mobile-links">
        <div class="sidebar-content">
            <li>
                <a href="#" class="btn-large white black-text z-depth-0 left">
                    <span class="home-btn-sn">Home</span>
                    <i class="material-icons left green-text text-darken-4 home">home</i>
                </a>
            </li>

            <li>
                <a href="# " data-target="dropdown-course-sidenav" class="dropdown-trigger-sidenav btn-large white black-text z-depth-0 left ">
                    <span class="courses-btn-sn">Courses</span>
                    <i class="material-icons left orange-text text-darken-4 list">list</i>
                    <i class="material-icons right arrow-icon">arrow_drop_down</i>
                </a>
                <ul class="dropdown-content dropdown-course-sidenav" id="dropdown-course-sidenav">
                    <li><a href="# ">BSCPE</a></li>
                    <li><a href="# ">BSCE</a></li>
                    <li><a href="# ">BEED</a></li>
                    <li><a href="# ">BSE</a></li>
                    <li><a href="# ">BSBA Human Resource</a></li>
                    <li><a href="# ">BSBA Marketing</a></li>
                    <li><a href="# ">BSOA</a></li>
                    <li><a href="# ">BSHM</a></li>
                    <li><a href="# ">BSTM</a></li>
                </ul>
            </li>

            <li>
                <a href="# " class="btn-large white  black-text z-depth-0 left ">
                    <span class="about-btn-sn">About</span>
                    <i class="material-icons left yellow-text text-darken-4 info">info</i>
                </a>
            </li>
            <li>
                <a href="#" data-target="dropdown-account-sidenav" class="login-btn dropdown-account-sidenav btn-large white black-text z-depth-0 left ">
                    <span>
                        <?php
                            echo $_SESSION['id']; 
                        ?>
                    </span>
                    <i class="material-icons left blue-text text-darken-4 ">person</i>
                    <i class="material-icons right arrow-icon">arrow_drop_down</i>
                </a>
                <ul class="dropdown-content dropdown-content-account-sidenav" id="dropdown-account-sidenav">
                        <li>
                            <a href="#">
                                <span class="center">My Account</span>
                                <i class="material-icons left green-text text-darken-3">account_circle</i>
                            </a>
                        </li>
                        <li>
                        <a href="components/logout.php">
                            <span class="center">Logout</span>
                            <i class="material-icons left red-text text-darken-3">logout</i>
                        </a>
                        </li>
                    </ul>
            </li>
        </div>
    </ul>


    <div class="container">
        <div class="row main-content-grid">
            <div class="ursbanner-container col s12 l9 hide-on-down">
                <img src="img/ursbanner.png" alt="urs-banner" class="ursbanner">
            </div>
            <div class="search-section col s12 m10 l3 offset-m1 left">
                <h6 class="search-title">Explore research</h6>
                <h6 class="search-statement">Access most of the theses accomplished by University of Rizal System - Antipolo Campus students and alumnis.</h6>
                <div class="row">
                    <div class="input-field s12">
                        <div class="search-container ">
                            <input type="text" class="search-input" placeholder="Search publications">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row ursvmco">
            <div class="col s12 m10 l6 offset-m1 left brand-text center">
                <h3 class="brand-title">BRAND</h2>
                    <p class="brand-content">"Nurturing Tomorrow's Noblest."</p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left vision-text center">
                <h3 class="vision-title">VISION</h2>
                    <p class="vision-content">The leading University in human resource development, knowledge and technology generation and environmental stewardship</p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left mission-text center">
                <h3 class="mission-title">MISSION</h2>
                    <p class="mission-content">The University of Rizal System is committed to nurture and produce upright and competent graduates and empowered community through relevant and sustainable higher professional and technical instruction, research, extension and production
                        services.
                    </p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left core-values-text center">
                <h3 class="core-values-title">CORE VALUES</h2>
                    <p><span class="core-values-acro">R</span> <span class="core-values-content">- Responsiveness</span></p>
                    <p><span class="core-values-acro">I</span> <span class="core-values-content">- Integrity</span></p>
                    <p><span class="core-values-acro">S</span> <span class="core-values-content">- Service</span></p>
                    <p><span class="core-values-acro">E</span> <span class="core-values-content">- Exellence</span></p>
                    <p><span class="core-values-acro">S</span> <span class="core-values-content">- Social Responsibility</span></p>
            </div>
        </div>
    </div>


    <div class="footer-panel">
        <footer class="page-footer white">
            <hr>
            <p class="footer-text black-text">&copy; 2022 URSAC: Group B - Thesis Archiving Management System</p>
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js "></script>
    <script src="scripts/main.js "></script>

</body>

</html>
