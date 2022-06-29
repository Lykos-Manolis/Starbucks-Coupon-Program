// Lykos Manolis //


// Voucher db search
function searchSSN(){
    ssn = document.getElementById("init-ssn-input").value;
    makeAjaxRequest(`ajax/search-ssn.php?ssn=${ssn}`,handleSearchResponse);
}

function handleSearchResponse(result){
    // check if person exists in voucher db
    if(result.length != 0){
        showUser(result[0],result[0].voucherCode);
        return;
    }

    ssn = document.getElementById("init-ssn-input").value;
    document.getElementById("ssnField").value = ssn;

    $("#submit-modal").modal('toggle');
}

// Starbucks MIS db search
function searchMIS(){
    let ssn = document.getElementById("ssnField").value;
    let ucn = document.getElementById("ucnField").value;
    let tin = document.getElementById("tinField").value;
    let id = document.getElementById("idField").value;
    makeAjaxRequest(`ajax/search-mis.php?ssn=${ssn}&ucn=${ucn}&tin=${tin}&id=${id}`,handleMisResponse);
}

function handleMisResponse(response){
    // clear and close modal
    $("#submit-modal").modal('toggle');
    document.getElementById("ssnField").value = '';
    document.getElementById("ucnField").value = '';
    document.getElementById("tinField").value = '';
    document.getElementById("idField").value = '';


    // check if person is registered
    if(response.length === 0){
        showAlert('You are not registered in the unemployment list.');
        return;
    }

    // check eligibility
    if(!credentialValidation(response[0].birth_date, response[0].unemp_card_status)){
        showAlert('You are not eligible for a coupon.');
        return;
    }

    // add person to db and give voucher
    let voucherCode = Math.random().toString().substring(2, 16);
    makeAjaxRequest(`ajax/submit-voucher.php?
                        fname=${response[0].fname}&
                        lname=${response[0].lname}&
                        patronym=${response[0].patronym}&
                        bd=${response[0].birth_date}&
                        id=${response[0].id}&
                        ssn=${response[0].ssn}&
                        tin=${response[0].tin}&
                        ucn=${response[0].unemp_card_num}&
                        unempDuration=${response[0].unemp_duration}&
                        voucherCode=${voucherCode}`,
                        ()=>{showUser(response[0],voucherCode)});
}