<?php
session_start();
include '../components/connections.php';

if (empty($_SESSION['admin_id'])):
    header('Location: ../admin-signin.php');
endif;

if (isset($_POST['save'])) {
    $title = $_POST['title'];
    $abstract = $_POST['abstract'];
    $author = $_POST['author'];
    $department = $_POST['select_department'];
    $program = $_POST['select_program'];
    $year = $_POST['year'];
    $date = $_POST['date'];
    $uploaded_by = $_SESSION['admin_id'];

    // Check if thesis with same title or abstract already exists
    $sqladmin = "SELECT title FROM uploaded_thesis WHERE title = '$title' OR abstract = '$abstract'";
    $result = $con->query($sqladmin);
    if ($result->num_rows > 0) {
        echo "<script>
                        alert('Some information already exists!')
                        window.location.replace('admin-thesis.php');
                    </script>";
    } else {
        // Insert new thesis record
        $sqladmin_query = "INSERT INTO uploaded_thesis (title, abstract, author, department, program, year, date, uploaded_by) VALUES ('$title', '$abstract', '$author', '$department', '$program', '$year', '$date', '$uploaded_by')";
        $result = $con->query($sqladmin_query);

        // Upload file
        $file_name = $_FILES['file']['name'];
        $file_size = $_FILES['file']['size'];
        $file_tmp = $_FILES['file']['tmp_name'];
        $file_type = $_FILES['file']['type'];
        $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
        $extensions = array("pdf");
        if (in_array($file_ext, $extensions) && $file_size <= 5242880) {
            $new_file_name = uniqid('', true) . '.' . $file_ext;
            move_uploaded_file($file_tmp, '../uploads/' . $new_file_name);

            // Update the file name in the database
            $thesis_id = $con->insert_id;
            $update_query = "UPDATE uploaded_thesis SET file_name = '$new_file_name' WHERE id = '$thesis_id'";
            $con->query($update_query);

            echo "<script>
                    alert('Record successfully uploaded!')
                    window.location.replace('admin-thesis.php');
                </script>";
        } else {
            echo "<script>
                    alert('Error uploading file. Please ensure that the file is in PDF and is less than 5MB.')
                    window.location.replace('admin-thesis.php');
                </script>";
        }
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
                <th class="program-header">Program</th>
                <th class="year_header">Year of Publication</th>
                <th class="date_header">Date Uploaded</th>
                <th class="uploadedby_header">Uploaded By</th>
                <th class="action_header">Actions</th>
            </tr>

            <?php
            $sql = "SELECT id, title, abstract, author, department, program, year, date, uploaded_by, file_name from uploaded_thesis";
            $result = $con->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>
                <td>" . $row["id"] . "</td>
                <td>" . $row["title"] . "</td>
                <td>" . $row["abstract"] . "</td>
                <td>" . $row["author"] . "</td>
                <td>" . $row["department"] . "</td>
                <td>" . $row["program"] . "</td>
                <td>" . $row["year"] . "</td>
                <td>" . $row["date"] . "</td>
                <td>" . $row["uploaded_by"] . "</td>
                <td>
                    <a href='#' class='edit_button' onclick='showForm()'><i class='fa-solid fa-pen-to-square'></i></a>
                    <a href='admin-thesis.php?id=" . $row["id"] . "' class='delete_button'><i class='fa-solid fa-trash'></i></a>
                    <a href='../uploads/" . $row["file_name"] . "' target='_blank' class='view_button'><i class='fa-solid fa-eye'></i></a>
                </td>
            
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
        <form action="" method="post" enctype="multipart/form-data">
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

            <div class="dept-program-parent-container">
                <div class="department-container">
                    <div class="label">DEPARTMENT</div>
                    <div class="data-input-container">
                        <select name="select_department" id="select_department" class="data-input" required>
                            <option value="SELECTION">Select department</option>
                            <option value="Accounting-Education-Department">Accounting Education Department</option>
                            <option value="Business-and-Management-Department">Business and Management Department
                            </option>
                            <option value="Computer-Studies-Department">Computer Studies Department</option>
                            <option value="Engineering-Department">Engineering Department</option>
                            <option value="International-Hospitality-Management-Department">International Hospitality
                                Management Department</option>
                            <option value="Teacher-Education-Department">Teacher Education Department</option>
                            <option value="Arts-and-Science-Department">Arts and Science Department</option>
                            <option value="College-of-Criminal-Justice-Education">College of Criminal Justice Education
                            </option>
                            <option value="Senior-High-School">Senior High School</option>
                            <option value="Graduate">Graduate</option>
                            <option value="Post-Graduate">Post Graduate</option>
                        </select>
                    </div>
                </div>

                <div class="program-container">
                    <div class="label">PROGRAM</div>
                    <div class="data-input-container">
                        <select name="select_program" id="select_program" class="data-input" disabled required>
                            <option data-value="SELECTION" value="">Select program</option>
                            <option data-value="Accounting-Education-Department" value="BSA">BSA</option>
                            <option data-value="Accounting-Education-Department" value="BSAS">BSAIS</option>
                            <option data-value="Business-and-Management-Department"
                                value="BSBA Major in Financial Management">BSBA Major in Financial Management</option>
                            <option data-value="Business-and-Management-Department"
                                value="BSBA Major in Human Resource Management">BSBA Major in Human Resource Management
                            </option>
                            <option data-value="Business-and-Management-Department"
                                value="BSBA Major in Marketing Management">BSBA Major in Marketing Management</option>
                            <option data-value="Business-and-Management-Department"
                                value="BSBA Major in Marketing Management">BSBA Major in Marketing Management</option>
                            <option data-value="Computer-Studies-Department" value="BSIT">BSIT</option>
                            <option data-value="Computer-Studies-Department" value="BSCS">BSCS</option>
                            <option data-value="Engineering-Department" value="BSCE">BSCE</option>
                            <option data-value="International-Hospitality-Management-Department" value="BSOA">BSOA
                            </option>
                            <option data-value="International-Hospitality-Management-Department" value="BSHM">BSHM
                            </option>
                            <option data-value="International-Hospitality-Management-Department" value="BSTM">BSTM
                            </option>
                            <option data-value="Teacher-Education-Department" value="BEEd">BEEd</option>
                            <option data-value="Teacher-Education-Department" value="BPEd">BPEd</option>
                            <option data-value="Teacher-Education-Department" value="BSNEd">BSNEd</option>
                            <option data-value="Teacher-Education-Department" value="BSEd Major in Religious Education">
                                BSEd Major in Religious Education</option>
                            <option data-value="Teacher-Education-Department" value="BSEd Major in Major in English">
                                BSEd Major in Major in English</option>
                            <option data-value="Teacher-Education-Department" value="BSEd Major in Major in Filipino">
                                BSEd Major in Religious Major in Filipino</option>
                            <option data-value="Teacher-Education-Department"
                                value="BSEd Major in Major in Mathematics">BSEd Major in Mathematics</option>
                            <option data-value="Arts-and-Science-Department" value="BAPS">BAPS</option>
                            <option data-value="Arts-and-Science-Department" value="BAPhilo">BAPhilo</option>
                            <option data-value="College-of-Criminal-Justice-Education" value="BSCrim">BSCrim</option>
                            <option data-value="Senior-High-School" value="ABM">ABM</option>
                            <option data-value="Senior-High-School" value="STEM">STEM</option>
                            <option data-value="Senior-High-School" value="HUMMS">HUMMS</option>
                            <option data-value="Senior-High-School" value="GAS">GAS</option>
                            <option data-value="Graduate" value="MAEd">MAEd</option>
                            <option data-value="Graduate" value="MPM">MPM</option>
                            <option data-value="Graduate" value="MBA">MBA</option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in English</option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in Filipino</option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in Mathematics</option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in Physical Education
                            </option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in Science</option>
                            <option data-value="Graduate" value="ME Major in English">ME Major in Social Studies
                            </option>
                            <option data-value="Post-Graduate" value="Doctor Educational Management">Doctor Educational
                                Management</option>
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
                        <input type="file" class="data-input" name="file" accept="application/pdf">
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