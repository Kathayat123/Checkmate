
if (userName != "Guest") {
    $("#DivLoginDtls").css("display", "none");
    slideInner = document.getElementById("kioskslideInner");
    slideInner.style.visibility = "visible"
}
else {
    obj = document.getElementById("DivLoginDtls");
    obj.style.visibility = "visible";
    $("#kioskslideInner").css("display", "none")
}


