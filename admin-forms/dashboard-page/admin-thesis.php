<?php
session_start();
include '../components/connections.php'; // eto yung binago ko 10:36AM. kapag ayaw gumana, ilagay sa admin-forms yong connections

if (empty($_SESSION['admin_id'])):
    header('Location: ../admin-signin.php');
endif;

if (isset($_POST['save'])) {
    $title = $_POST['title'];
    $abstract = $_POST['abstract'];
    $author = $_POST['author'];
    $department = $_POST['select_department'];
    $course = $_POST['select_course'];
    $year = $_POST['year'];
    $date = $_POST['date'];
    $uploaded_by = $_SESSION['admin_id'];

    $sqladmin = "SELECT title FROM uploaded_thesis WHERE title = '$title' OR abstract = '$abstract'";
    $result = $con->query($sqladmin);
    if ($result->num_rows > 0) {
        echo "<script>
                        alert('Some information already existing!')
                        window.location.replace('admin-thesis.php');
                    </script>";
    } else {
        $sqladmin_query = "INSERT INTO uploaded_thesis (title, abstract, author, department, course, year, date, uploaded_by) VALUES ('$title', '$abstract', '$author',' $department',' $course', '$year', '$date', '$uploaded_by')";
        $result = $con->query($sqladmin_query);

        echo "<script>
                    alert('Record successfully uploaded!')
                    window.location.replace('admin-thesis.php');
                </script>";
    }
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $delete_query = "DELETE FROM uploaded_thesis WHERE id = '$id'";
    $delete = $con->query($delete_query);

}
?>

<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/067d14b27b.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <link rel="stylesheet" href="../styles/dashboard-styles/header.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/left-nav.css">
    <link rel="stylesheet" href="../styles/dashboard-styles/thesis-table.css">


    <link rel="icon" type="image/x-icon" href="../img/svci_logo.png">

    <title>SVCI Research and Development Archiving System | Uploaded Thesis</title>

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

        <a href="#" class="general-link ">
            <div class="log-container">
                <i class="fa-solid fa-clock fa-lg"></i>
                <p class="log-button">Log Manager
                    <i class="fa-solid fa-angle-right arrow-icon "></i>
                </p>
            </div>
        </a>
    </div>

    <div class="top-section">
        <div class="action-container">
            <a href="#form-div" class="action-parent">
                <button class="add-record" id="add-record" onclick="showForm()">
                    CREATE
                </button>
            </a>
        </div>
    </div>


    <div class="thesis-label">UPLOADED THESIS</div>
    <div class="thesis-table-container">
        <table class="theses-table">
            <tr>
                <th class="id_header">ID</th>
                <th class="title_header">Title</th>
                <th class="abstract_header">Abstract</th>
                <th class="author_header">Author</th>
                <th class="department_header">Department</th>
                <th class="course_header">Course</th>
                <th class="year_header">Year of Publication</th>
                <th class="date_header">Date Uploaded</th>
                <th class="uploadedby_header">Uploaded By</th>
                <th class="action_header">Actions</th>
            </tr>

            <?php
            $sql = "SELECT id, title, abstract, author, department, course, year, date, uploaded_by from uploaded_thesis";
            $result = $con->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo
                        "<tr>
                                <td>" . $row["id"] . "</td>
                                <td>" . $row["title"] . "</td>
                                <td>" . $row["abstract"] . "</td>
                                <td>" . $row["author"] . "</td>
                                <td>" . $row["department"] . "</td>
                                <td>" . $row["course"] . "</td>
                                <td>" . $row["year"] . "</td>
                                <td>" . $row["date"] . "</td>
                                <td>" . $row["uploaded_by"] . "</td>
                                <td>" . "<a href='#' class = 'edit_button' onclick='showForm()'><i class='fa-solid fa-pen-to-square'></i></a>" .
                        "<a href='admin-thesis.php?id=" . $row["id"] . "' class = 'delete_button'><i class='fa-solid fa-trash'></i></a>" . "</td>
                            </tr>";
                }
                echo "</table>";
            } else {
                echo "No results.";
            }

            ?>
        </table>
    </div>

    <div class="form-label" id="label-div">CREATE NEW / MODIFY RECORD</div>
    <div class="form-container" id="form-div">
        <form action="" method="post">
            <input type="hidden" class="data-input" name="id" placeholder="ID" required>

            <div class="title-parent-container">
                <div class="title-container">
                    <div class="label">TITLE OF THE STUDY</div>
                    <div class="data-input-container">
                        <input type="text" class="data-input" id="title" name="title" placeholder="Title of the study"
                            required>
                    </div>
                </div>
            </div>

            <div class="abstract-parent-container">
                <div class="abstract-container">
                    <div class="label">ABSTRACT</div>
                    <div class="data-input-container">
                        <input type="text" class="data-input" id="abstract" name="abstract" placeholder="Abstract"
                            required>
                    </div>
                </div>
            </div>

            <div class="author-parent-container">
                <div class="author-container">
                    <div class="label">AUTHOR</div>
                    <div class="data-input-container">
                        <input type="text" class="data-input" name="author" placeholder="Author" required>
                    </div>
                </div>
            </div>

            <div class="dept-course-parent-container">
                <div class="department-container">
                    <div class="label">COLLEGE DEPARTMENT</div>
                    <div class="data-input-container">
                        <select name="select_department" id="select_department" class="data-input" required>
                            <option value="SELECTION">Select department</option>
                            <option value="COENG">College of Engineering (COENG)</option>
                            <option value="COE">College of Education (COE)</option>
                            <option value="CHI">College of Hospitality Industry (CHI)</option>
                            <option value="COBA">College of Business Administration (COBA)</option>
                        </select>
                    </div>
                </div>

                <div class="course-container">
                    <div class="label">COURSE</div>
                    <div class="data-input-container">
                        <select name="select_course" id="select_course" class="data-input" disabled required>
                            <option data-value="SELECTION" value="">Select course</option>
                            <option data-value="COENG" value="BS Computer Engineering">BS Computer Engineering</option>
                            <option data-value="COENG" value="BS Civil Engineering">BS Civil Engineering</option>
                            <option data-value="COE" value="Bachelor of Elementary Education">Bachelor of Elementary
                                Education</option>
                            <option data-value="COE" value="Bachelor of Secondary Education">Bachelor of Secondary
                                Education</option>
                            <option data-value="CHI" value="BS Hospitality Management">BS Hospitality Management
                            </option>
                            <option data-value="CHI" value="BS Tourism Management">BS Tourism Management</option>
                            <option data-value="COBA" value="BSBA Human Resource">BSBA Human Resource</option>
                            <option data-value="COBA" value="BSBA Marketing">BSBA Marketing</option>
                            <option data-value="COBA" value="BS Office Administration">BS Office Administration</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="year-date-parent-container">
                <div class="year-container">
                    <div class="label">YEAR OF PUBLICATION</div>
                    <div class="data-input-container">
                        <input type="number" class="data-input" name="year" placeholder="Year of publication" required>
                    </div>
                </div>
                <div class="date-container">
                    <div class="label">DATE UPLOADED</div>
                    <div class="data-input-container">
                        <input type="text" class="data-input" id="date" name="date" readonly="readonly" required>
                    </div>
                </div>
            </div>


            <div class="author-parent-container">
                <div class="author-container">
                    <div class="label">UPLOAD FILE</div>
                    <div class="data-input-container">
                        <input type="file" class="data-input" name="file">
                    </div>
                </div>
            </div>

            <div class="button-container">
                <button class="save-button" type="submit" name="save">
                    SAVE
                </button>

                <button class="cancel-button" onclick="showForm()">
                    CANCEL
                </button>
            </div>
        </form>

    </div>

    <script src="../scripts/dashboard.js"></script>


</body>