var t1 = performance.now();
var maxColor = 256 ** 3 - 1;

function onSubmit() {
    window.alert("Registered successfully!");
}

function checkOutChange() {
    var p = document.getElementById('checkout');
    p.innerHTML = "Join us! <a href=\"register.html\" id=\"register-link\"> Register now!</a>";
}


function randomNumberGenerator() {
    var range = window.prompt('Unfortunately, you cannot contact with us but you can generate a random number! Type number to specify a range.');
    var random = Math.floor(Math.random() * range);
    document.getElementById('Contact').innerHTML = "Your random number is: " + random;
}

function getDate() {
    var date = new Date();
    return date.toDateString();
}

function placeDate() {
    document.writeln(getDate());
}

function checkInt(number) {
    if (isNaN(number)) {
        throw new EvalError();
    }

    return 0 <= number && number <= 255;
}

function getColorFromFloat(number) {
    number = parseFloat(number);

    if (isNaN(number) || number < 0 || number > 1) {
        throw new EvalError();
    } else {
        return "#" + Math.abs(Math.round(maxColor * number)).toString(16).toUpperCase();
    }
}

function makeARandomMosaic() {
    var mosaicDiv = document.getElementById("mosaic-div");

    while (mosaicDiv.hasChildNodes()) {
        mosaicDiv.removeChild(mosaicDiv.lastChild);
    }

    var number = parseInt(document.getElementById("number-of-tiles").value);
    var red = parseInt(document.getElementById("number-red").value);
    var green = parseInt(document.getElementById("number-green").value);
    var blue = parseInt(document.getElementById("number-blue").value);
    var colorFunction;

    if (isNaN(number) || number < 0) {
        window.alert("Don't mess with me!");
        return;
    }

    try {
        if (checkInt(red) && checkInt(green) && checkInt(blue)) {
            colorFunction = function () {
                return "rgb(" + red + ", " + green + ", " + blue + ")";
            };
        }
    } catch (e) {
        window.alert("It's okey. Enjoy Math.random()");
        colorFunction = function () {
            return getColorFromFloat(Math.random());
        };
    }

    for (var i = 0; i < number; i++) {
        var element = document.createElement("div");
        element.style.backgroundColor = colorFunction();
        element.style.height = "10px";
        mosaicDiv.appendChild(element);
    }
}

window.addEventListener("load", function () {
    var t2 = performance.now();
    console.log("Loading takes " + (t2 - t1).toString() + " ms");

    var button = document.getElementById("login-button");
    button.addEventListener("mouseover", function () {
        console.log("Login button hovered");
    });
});