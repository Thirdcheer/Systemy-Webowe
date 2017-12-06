var shown = false;

function aboutClickMe(){

    var crButton = document.getElementById("createButton");
    var tmp = crButton.parentNode;
    var text = document.createTextNode("Whoa...");
    if (!shown) {
        var img = document.createElement("img");
        img.id = "image";
        img.setAttribute("src", "images/whoa.jpg");
        img.width = 1000;
        tmp.insertBefore(img, tmp.childNodes[0]);
        tmp.insertBefore(document.createElement("br"), tmp.childNodes[1]);
        shown = true;
        crButton.replaceChild(document.createTextNode("Ukryj obrazek"), crButton.childNodes[0]);
        document.body.appendChild(text);
    } else {
        tmp.removeChild(tmp.childNodes[0]);
        tmp.removeChild(tmp.childNodes[0]);
        shown = false;
        crButton.replaceChild(document.createTextNode("Pokaż obrazek"), crButton.childNodes[0]);
    }
}