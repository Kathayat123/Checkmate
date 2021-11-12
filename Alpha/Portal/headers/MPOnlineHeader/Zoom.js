// JScript File


var fontSize = 12;
var DfontSize;
function zoomIn() {

    fontSize += 1;

    if (fontSize <= 13) {
        document.body.style.fontSize = fontSize + "px";
        DfontSize = fontSize;
    }
}
function zoomOut() {
    DfontSize -= 1;
    if (DfontSize >= 11) {
        document.body.style.fontSize = DfontSize + "px";
        fontSize = DfontSize;
    }

}

function NormalFont() {
    document.body.style.fontSize = "12px";
    DfontSize = 12;
    fontSize = 12;
}

