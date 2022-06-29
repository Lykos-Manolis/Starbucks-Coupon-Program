// Lykos Manolis //


// assigns functions on load
$(document).ready(function(){
    document.getElementById("search-id-btn").addEventListener("click", searchSSN);
    document.getElementById("submit-info-btn").addEventListener("click", searchMIS);
    document.getElementById("save-voucher-btn").addEventListener("click", printPdf);
})