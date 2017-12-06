function focuser(i){
    switch(i)
    {
        case 1 : document.getElementById("formsHint").innerHTML="Podaj swoję imię.";
            break;
        case 2 : document.getElementById("formsHint").innerHTML="Podaj swoje nazwisko.";
            break;
        case 3 : document.getElementById("formsHint").innerHTML="Podaj nick";
            break;
        case 4 : document.getElementById("formsHint").innerHTML="Podaj hasło.";
            break;
        default: break;
    }
}
function blurer(){
    document.getElementById("formsHint").innerHTML="";
}

function submitter(){
    window.alert('Dane przeslano pomyślnie.');
}
function resetter(){
    window.alert('Wyczyszczono formularz pomyślnie.');
}