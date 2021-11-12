
function validateUser() {

    var UserId = document.getElementById("UserId");
    var Password = document.getElementById("passwd");
    var Captcha = document.getElementById("Captcha1_TextBoxNo");
    if (!CheckMandatoryRadio("radio", "User Type")) { return false; }
    if (!CheckNull(UserId, "User Name")) { return false; }
    if (!CheckNull(Password, "Password")) { return false; }
    if (!CheckNull(Captcha, "verification code")) { return false; }
    EncryptData(Password);
    return true;
}
function CheckMandatoryRadio(theField, message) {
    var id = document.getElementById(theField);
    var inputs = id.getElementsByTagName('input');
    var len = inputs.length;

    //////////////////////

    var rowIndex = 0; // rowindex, in this case the first row of your table
    var id = theField;
    var table = document.getElementById(id); // table to perform search onf
    var row = table.getElementsByTagName('tr')[rowIndex];
    var cells = row.getElementsByTagName('td');
    var cellCount = cells.length;
    var rdflg = false;
    for (var i = 0; i < len; i++) {
        if (document.getElementById(id + '_' + i).checked) {
            rdflg = true;
        }
    }
    if (!rdflg) {
        //row.style.color = "Red";
        document.getElementById(theField).style.color = "Yellow";
        // for (var k = 0; k < cellCount; k++) { document.getElementById(id + '_' + k).style.color = "Red"; }
        alert("Please Select " + message);
        return false;
    }

    else {
        document.getElementById(theField).style.color = "";
        return true;

    }
    /////////////////
}


//function CheckNull(theField, paraName) {
//    if (theField == null) { return true; }
//    var Field = theField.value;
//    if (theField.value.length == 0) {
//        theField.focus();
//        WriteClientMessage("Please enter " + paraName);
//        return false;
//    }
//    return true;
//} 

function CheckNull(theField, paraName) {
    if (theField == null) { return true; }
    var Field = theField.value;
    if (theField.value.length == 0) {
        theField.focus();
        //                var SpnMsg = document.getElementById("SpnMsg");
        //                SpnMsg.style.visibility = 'visible';
        //                $("#SpnMsg").show();
        //                SpnMsg.innerHTML = "Please enter " + paraName;

        alert("Please enter " + paraName);

        return false;
    }
    return true;
}




