
var UserName = userName == "Guest" ? "" : userName.substr(0, 15);

if (langid == 'en-US') {
    var Logoff = lblLogoff == "Logoff" ? "Sign Out" : lblLogoff;
    var Subheader = subheader;
}
else {
    var Logoff = lblLogoff == "Logoff" ? "साइन आउट" : lblLogoff;
    var Subheader = subheader;
}


//var LocalDateTime = new Date().getVarDate();

var Headers = '<div class="pre_header">' +
        '<div class="pre-header-inner">' +
    // '<img src="../Quick Links/Vyapam/images/icons_01.png" align="absmiddle"/>' +
    ////' <a id="lblHindi" href="/Portal/frmLanguageHandler.aspx?LanguageID=1" class="superhead"> | हिन्दी</a>' +
    ////' <a id="lblEnglish" href="/Portal/frmLanguageHandler.aspx?LanguageID=2" class="superhead">| English</a>' +

    '<div id="DivLoginDtls" >' +
    //'' + lblLogin + ':' +
    //'  <a href="/Portal/Examinations/Vyapam/examsList.aspx?loginType=K">' + lnkKiosk + '</a>' +
    // ' | <a href="/Portal/Examinations/Vyapam/examsList.aspx?loginType=G">' + lblG2G + '</a>' +
    // ' | <a href="/Portal/Examinations/Vyapam/examsList.aspx?loginType=C">' + lblCitizen + '</a>' +
     //'<a href="javascript:void(0);" class="zoom_in_out"><img src="../img/trplay.png" alt="" id="zoom_in_out_img" style="width:20px;height:20px; padding-top:3px;" /> Text Magnifier</a>' +
    '</div>' +
        '<div id="kioskslideInner" style="float:right;">' +
        //'<a href="/Portal/UserAction.ashx?Action=ShowHome">' + UserName + "</a> | " +
       
        //'<a href="/Portal/UserAction.ashx?Action=LogOut">' + Logoff + "</a> " +
        "</div>" +
     '</div>' +
    '</div>' +

    '<div class="header">' +
        '<div class="header-inner">' +
            '<div class="service-logo">' +
             '<img src="../DU/Header.jpg" alt="MPPEBlogo" style="height:98px ;width: 998px;" />' +
            '</div>' +
            //'<div class="mpo-logo">' +
            '<span  id="spanTime" style="color:white; display:none;"></span>' +
            //    '<img src="/Quick Links/Vyapam/images/mpo.png" alt="Mpologo" />' +
            //'</div>' +
        '</div>' +
        '</div>';


//var Headers = '<div class="header">' +
//        '<div class="header-inner">' +
//            '<div class="service-logo">' +
//                '<img src="/Quick Links/Vyapam/images/Vyapamlogo.png"  alt="MPPEBlogo" />' +
//            '</div>' +
//            '<div class="mpo-logo">' +
//                '<img src="/Quick Links/Vyapam/images/mpo.png" alt="Mpologo" />' +
//            '</div>' +
//        '</div>' +
//    '</div>' +
//    '<div class="pre_header">' +
//        '<div class="pre-header-inner">' +
//           '<a href="/Portal/Examinations/Vyapam/examsList.aspx">मुख्य पृष्ठ </a>' +
//    '<div id="DivLoginDtls" >' +
//                        '' + lblLogin + ':' +
//                        ' | <a href="/Portal/frmLogin.aspx?loginType=K">' + lnkKiosk + '</a>' +
//                        '</div>' +
//                           '<div id="kioskslideInner" style="float:right;">' +
//                         '<a href="/Portal/UserAction.ashx?Action=ShowHome">' + UserName + "</a> | " +
//                          '<a href="/Portal/UserAction.ashx?Action=LogOut">' + Logoff + "</a> " +
//                         "</div>" +

//        '</div>' +
//    '</div>';


document.write(Headers)




if (langid == 'en-US') {
    obj = document.getElementById('lblEnglish');
    obj.style.display = "none";
    lblhome.innerHTML = " Home";
    //document.getElementById("imgLogo").src = "/Quick Links/PortalImages/mponline_logo.png";

}
else {
    obj = document.getElementById('lblHindi');
    obj.style.display = "none";
    lblhome.innerHTML = "  मुख्य पृष्ठ";
    //document.getElementById("imgLogo").src = "/Quick Links/PortalImages/MPPOnline-Logo-Hi.png";
}


var CurPageName = location.pathname.substring(location.pathname.lastIndexOf("/") + 1);
if (CurPageName != "examsList.aspx") {
    document.getElementById('lblEnglish').style.display = "none";
    document.getElementById('lblHindi').style.display = "none";
}
