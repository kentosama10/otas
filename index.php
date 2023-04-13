<?php
session_start();
include 'components/connections.php';

if (empty($_SESSION['id'])):
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

    <link rel="shortcut icon" href="img/svci_logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/index.css">

    <title>SVCI Research and Development Archiving System | Home</title>


</head>

<body>
    <nav class="nav-options nav-wrapper white">
        <div class="container">
            <a href="" class=""><img src="img/svci_logo.png" alt="urslogo" class="hide-on-med-and-down urslogo"></a>
            <a href="" class="brand-logo black-text">SVCI Research and Development Archiving System</a>
            <a href="#" class="sidenav-trigger" data-target="mobile-links">
                <i class="material-icons black-text">menu</i>
            </a>
            <ul class="navbutton right hide-on-med-and-down" id="navbutton">
                <li id="home">
                    <a href="index.php" class="home-btn btn-large white waves-effect waves-dark z-depth-0">
                        <span>Home</span>
                    </a>
                </li>

                <li id="course">
                    <a href="# " data-target="dropdown"
                        class="courses-btn dropdown-trigger btn-large white waves-effect waves-dark z-depth-0">
                        <span>Programs</span>
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
                    <a href="# " data-target="dropdown-account"
                        class="login-btn dropdown-account btn-large white waves-effect waves-dark z-depth-0">
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
                <a href="# " data-target="dropdown-course-sidenav"
                    class="dropdown-trigger-sidenav btn-large white black-text z-depth-0 left ">
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
                <a href="#" data-target="dropdown-account-sidenav"
                    class="login-btn dropdown-account-sidenav btn-large white black-text z-depth-0 left ">
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
                <img src="img/svci_banner.png" alt="urs-banner" class="svcibanner">
            </div>
            <div class="search-section col s12 m10 l3 offset-m1 left">
                <h6 class="search-title">Explore research</h6>
                <h6 class="search-statement">Access most of the thesis accomplished by St. Vincent's College Incorported
                    - students and alumnis.</h6>
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
                    <p class="brand-content">We Preserve Your Research, You Shape the Future.</p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left vision-text center">
                <h3 class="vision-title">VISION</h2>
                    <p class="vision-content">Our vision to our program SVCI Research and Development Archiving System
                        is to
                        empower organizations to make informed decisions and drive innovation through the preservation
                        and accessibility of knowledge. We envision a system that seamlessly integrates with existing
                        processes and technologies, providing a user-friendly interface for efficient and effective
                        information retrieval. Our goal is to promote collaboration and knowledge-sharing, ultimately
                        leading to the development of groundbreaking solutions that positively impact society.</p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left mission-text center">
                <h3 class="mission-title">MISSION</h2>
                    <p class="mission-content">Our mission for the SVCI Research and Development Archiving System is to
                        support the pursuit of excellent and globally competitive education by providing a platform for
                        the preservation, organization, and dissemination of research and development knowledge. We aim
                        to integrate the values of Saint Vincent Ferrer and the Catholic Christian ideals of SVCI in
                        promoting research that contributes to the total development of the family, human society, and
                        the Church. Our system will serve as a tool for molding the character of men and women committed
                        to the person and teachings of Jesus Christ by fostering a culture of innovation and
                        knowledge-sharing that empowers individuals and organizations to make a positive impact in their
                        communities.
                    </p>
            </div>
            <div class="col s12 m10 l6 offset-m1 left core-values-text center">
                <h3 class="core-values-title">CORE VALUES</h2>
                    <p><span class="core-values-acro">A</span> <span class="core-values-content">- Accountability</span>
                    </p>
                    <p><span class="core-values-acro">R</span> <span class="core-values-content">- Reliability</span>
                    </p>
                    <p><span class="core-values-acro">C</span> <span class="core-values-content">- Customer
                            Satisfaction</span></p>
                    <p><span class="core-values-acro">H</span> <span class="core-values-content">- Honesty</span></p>
                    <p><span class="core-values-acro">I</span> <span class="core-values-content">-
                            Innovation</span></p>
                    <p><span class="core-values-acro">V</span> <span class="core-values-content">- Value Creation</span>
                    </p>
                    <p><span class="core-values-acro">I</span> <span class="core-values-content">- Inclusivity</span>
                    </p>
                    <p><span class="core-values-acro">N</span> <span class="core-values-content">- Novelty</span></p>
                    <p><span class="core-values-acro">G</span> <span class="core-values-content">- Growth-Oriented



                        </span></p>
            </div>
        </div>
    </div>


    <div class="footer-panel">
        <footer class="page-footer white">
            <hr>
            <p class="footer-text black-text">&copy; 2023 <strong>ALEMANSUM:</strong> Group 7 - SVCI Research and Development Archiving System</p>
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js "></script>
    <script src="scripts/main.js "></script>

</body>

</html>