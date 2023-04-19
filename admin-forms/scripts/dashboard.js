function showDiv() {
  var x = document.getElementById("dropDown-div");

  if (x.style.display == "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}

function showForm() {
  var w = document.getElementById("add-record");
  var x = document.getElementById("label-div");
  var y = document.getElementById("form-div");

  if (x.style.display == "block" && y.style.display == "block") {
    w.style.display = "block";
    x.style.display = "none";
    y.style.display = "none";
  } else {
    w.style.display = "none";
    x.style.display = "block";
    x.style.textAlign = "center";
    y.style.display = "block";
  }
}

function myFunction() {
  var x = document.getElementById("signup-input-password");
  var y = document.getElementById("signup-input-cpassword");

  if (x.type === "password" && y.type === "password") {
    x.type = "text";
    y.type = "text";
  } else {
    x.type = "password";
    y.type = "password";
  }
}

function generateRandomNumber() {
  var rand = Math.floor(1000 + Math.random() * 9000);
  document.getElementById("accounts_id").value = "121190" + rand;
}

function accountType() {
  var selectAccountType = document.getElementById("select").value;

  if (selectAccountType === "End-user") {
    document.getElementById("accounts_id").value = "Not required";
    document.getElementById("accounts_id").style.color = "rgba(80, 80, 80, .6)";
  } else {
    var rand = Math.floor(1000 + Math.random() * 9000);
    document.getElementById("accounts_id").value = "121190" + rand;
    document.getElementById("accounts_id").style.color = "black";
  }
}

const today = new Date();
const yyyy = today.getFullYear();
let mm = today.getMonth() + 1; // Months start at 0!
let dd = today.getDate();

if (dd < 10) dd = "0" + dd;
if (mm < 10) mm = "0" + mm;

const formattedToday = yyyy + "-" + mm + "-" + dd;

document.getElementById("date").value = formattedToday;

$(document).ready(function () {
  // Save all selects' id in an array
  // to determine which select's option and value would be changed
  // after you select an option in another select.
  var selectors = ["select_department", "select_program"];

  $("select").on("change", function () {
    console.log("Select changed");
    var index = selectors.indexOf(this.id);
    var value = this.value;

    // check if is the last one or not
    if (index < selectors.length - 1) {
      var next = $("#" + selectors[index + 1]);

      // Show all the options in next select
      $(next).find("option").show();
      if (value != "") {
        // if this select's value is not empty
        // hide some of the options
        $(next)
          .find("option[data-value!=" + value + "]")
          .hide();
      }

      // set next select's value to be the first option's value
      // and trigger change()
      $(next).val($(next).find("option:first").val()).change();
    }
  });
});

$("#select_department").change(function () {
  $("#select_program").prop("disabled", true);
  if ($(this).val() == "SELECTION") {
    $("#select_program").prop("disabled", true);
  } else {
    $("#select_program").prop("disabled", false);
  }
});
