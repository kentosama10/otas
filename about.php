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
    <link rel="stylesheet" href="styles/about.css">

    <title>SVCI Research and Development Archiving System | About</title>

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

                <li id="program">
                    <a href="# " data-target="dropdown"
                        class="courses-btn dropdown-trigger btn-large white waves-effect waves-dark z-depth-0">
                        <span>Programs</span>
                        <i class="material-icons right arrow-icon">arrow_drop_down</i>
                    </a>
                    <ul class="dropdown-content dropdown-program" id="dropdown">
                        <li><a href="#">BSA</a></li>
                        <li><a href="#">BSAIS</a></li>
                        <li><a href="#">BSBA Major in Financial Management</a></li>
                        <li><a href="#">BSBA Major in Human Resource Management</a></li>
                        <li><a href="#">BSBA Major in Marketing Management</a></li>
                        <li><a href="#">BSBA Major in Marketing Management</a></li>
                        <li><a href="#">BSIT</a></li>
                        <li><a href="#">BSCS</a></li>
                        <li><a href="#">BSCE</a></li>
                        <li><a href="#">BSIT</a></li>
                        <li><a href="#">BSCS</a></li>
                        <li><a href="#">BSCE</a></li>
                        <li><a href="#">BSIT</a></li>
                        <li><a href="#">BSCS</a></li>
                        <li><a href="#">BSOA</a></li>
                        <li><a href="#">BSHM</a></li>
                        <li><a href="#">BSTM</a></li>
                        <li><a href="#">BEEd</a></li>
                        <li><a href="#">BPEd</a></li>
                        <li><a href="#">BSNEd</a></li>
                        <li><a href="#">BSEd Major in Religious Education</a></li>
                        <li><a href="#">BSEd Major in Major in English</a></li>
                        <li><a href="#">BSEd Major in Religious Major in Filipino</a></li>
                        <li><a href="#">BSEd Major in Mathematics</a></li>
                        <li><a href="#">BAPS</a></li>
                        <li><a href="#">BAPhilo</a></li>
                        <li><a href="#">BSCrim</a></li>
                        <li><a href="#">ABM</a></li>
                        <li><a href="#">STEM</a></li>
                        <li><a href="#">HUMMS</a></li>
                        <li><a href="#">GAS</a></li>
                        <li><a href="#">MAEd</a></li>
                        <li><a href="#">MPM</a></li>
                        <li><a href="#">MBA</a></li>
                        <li><a href="#">ME Major in English</a></li>
                        <li><a href="#">ME Major in Filipino</a></li>
                        <li><a href="#">ME Major in Mathematics</a></li>
                        <li><a href="#">ME Major in Physical Education</a></li>
                        <li><a href="#">ME Major in Science</a></li>
                        <li><a href="#">ME Major in Social Studies</a></li>
                        <li><a href="#">DEM</a></li>
                    </ul>
                </li>

                <li id="about">
                    <a href="about.php" class="about-btn btn-large white waves-effect waves-dark z-depth-0">
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

    <div class="container about-container">
        <div class="row">
            <div class="col s12">
                <h3 class="about-title">About SVCI Research and Development Archiving System</h3>
                <p class="about-text">Welcome to SVCI Research and Development Archiving System, a platform that aims to
                    streamline and simplify the process of archiving research and development outputs. Our system is
                    designed to help researchers, scholars, and academicians efficiently store and retrieve their works
                    while also ensuring that these valuable resources are easily accessible and searchable by interested
                    parties.</p>
                <p class="about-text">At SVCI, we believe that the advancement of research and development is crucial
                    for the growth and progress of our society. Thus, we developed a system that provides a reliable and
                    secure space for archiving and sharing research outputs, academic papers, conference proceedings,
                    and other scholarly materials.</p>
                <p class="about-text">Our system offers various features such as:</p>
                <ul class="about-list">
                    <li>Easy and secure online submission of research outputs</li>
                    <li>Efficient search and retrieval of stored materials</li>
                    <li>Customizable access and sharing settings for research materials</li>
                    <li>Integration with other academic databases and resources</li>
                </ul>
                <p class="about-text">We continuously strive to improve our system to meet the evolving needs of
                    researchers and scholars. If you have any suggestions or feedback, please don't hesitate to reach
                    out to us.</p>
                <p class="about-text">Thank you for choosing SVCI Research and Development Archiving System as your
                    platform for preserving and sharing valuable research outputs. Together, let us contribute to the
                    advancement of knowledge and progress of our society.</p>
            </div>
        </div>
    </div>


    <div class="footer-panel">
        <footer class="page-footer white">
            <hr>
            <p class="footer-text black-text">&copy; 2023 <strong>ALEMANSUM:</strong> <a href="devs.php">Group 7</a> -
                SVCI Research and Development Archiving System</p>
        </footer>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js "></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-beta/js/materialize.min.js "></script>
    <script src="scripts/main.js "></script>

</body>

</html>