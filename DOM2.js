function statistics_images(){
    var x = document.images.length;
    window.alert("Na stronie znajduje się " + x + " obrazków");
}

function statistics_links(){
    var x = document.links.length;
    window.alert("Na stronie znajduje się " + x + " linków");
}

function statistics_forms(){
    var x = document.forms.length;
    window.alert("Na stronie znajduje się " + x + " formularzy");
}

function statistics_anchor(){
    var x = document.anchors.length;
    window.alert("Na stronie znajduje się " + x + " zakotwiczeń");
}

function statistics_item(){
    var x = document.images.namedItem("first").getAttribute("src");
    document.getElementById("second").setAttribute("src", x);
}

