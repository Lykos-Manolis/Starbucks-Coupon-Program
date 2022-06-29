// Lykos Manolis //


// Alert
function showAlert(alertContent){
    let alert = document.getElementById('alert');
    alert.innerText = alertContent;
    alert.classList.toggle('d-none');
    setTimeout(
        ()=>{alert.classList.toggle('d-none');},
        3000
    )
}

// User
function showUser(user,code){
    document.getElementById("user-code-name").innerText = user.fname+' '+user.lname;
    document.getElementById("user-code").innerText = code;
    $("#code-modal").modal('toggle');
}

// Pdf
function printPdf(){
    $('#code-modal').printThis({
        importCSS: false,
        loadCSS: [
            'http://localhost/starbucks/assets/vendor/fonts/boxicons.css',
            'http://localhost/starbucks/assets/vendor/css/core.css',
            'http://localhost/starbucks/assets/vendor/css/theme-default.css',
            'http://localhost/starbucks/assets/css/demo.css',
            'http://localhost/starbucks/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css',
            'http://localhost/starbucks/assets/css/landing-page.css',
            'http://localhost/starbucks/assets/img/icons/navicons/welcome-double-stars.png']
    });
}