// Lykos Manolis //


// Request Master
function makeAjaxRequest(url, resultFunction=false){
    var request = new XMLHttpRequest();
    request.onreadystatechange = () => {
        if (request.readyState == request.DONE) {
            if (request.status == 200){
                if(resultFunction){ 
                    try {
                        let response = request.responseText==="" ? "" : JSON.parse(request.responseText);
                        resultFunction(response);
                    } catch (error) {
                        console.log(request.responseText);
                    }
                }
            }
        };
    };
    request.open("GET", url, true);
    request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    request.send();
}