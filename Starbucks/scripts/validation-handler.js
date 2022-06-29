// Lykos Manolis //


// check birth date and unemp status
function credentialValidation(bd, status){
    if(parseInt(bd) >= 1985 && status === 'active')
        return true;

    return false;
}