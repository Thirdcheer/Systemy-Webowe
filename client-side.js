function onSubmit() {
    window.alert("Registered successfully!");
}

function checkOutChange(){
    var p = document.getElementById('checkout');
    p.innerHTML = "Join us! <a href=\"register.html\" id=\"register-link\"> Register now!</a>";
}


function randomNumberGenerator(){
    var range = window.prompt('Unfortunately, you cannot contact with us but you can generate a random number! Type number to specify a range.');
    var random = Math.floor(Math.random()*range);
    document.getElementById('Contact').innerHTML = "Your random number is: " + random;
}
