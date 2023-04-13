document.addEventListener('DOMContentLoaded', function() {
    var drop = document.querySelectorAll('.dropdown-trigger')
    M.Dropdown.init(drop, {
        coverTrigger: false,
        inDuration: 300,
        outDuration: 300
    })
})

document.addEventListener('DOMContentLoaded', function() {
    var dropdown_account = document.querySelectorAll('.dropdown-account')
    M.Dropdown.init(dropdown_account, {
        coverTrigger: false,
        inDuration: 300,
        outDuration: 300
    })
})


// sidenav
$(document).ready(function() {
    $('.sidenav').sidenav();
})

// sidenav dropdown
document.addEventListener('DOMContentLoaded', function() {
    var dropsidenav = document.querySelectorAll('.dropdown-trigger-sidenav')
    M.Dropdown.init(dropsidenav, {
        coverTrigger: false,
        inDuration: 300,
        outDuration: 300
    })
})

document.addEventListener('DOMContentLoaded', function() {
    var dropdown_account_sidenav = document.querySelectorAll('.dropdown-account-sidenav')
    M.Dropdown.init(dropdown_account_sidenav, {
        coverTrigger: false,
        inDuration: 300,
        outDuration: 300
    })
})