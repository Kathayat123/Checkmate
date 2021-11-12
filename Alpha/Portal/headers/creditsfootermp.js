function WriteMessage(a) { var b = screen.height / 2 - 335; "" != a && document.write("<div id='TransScreen'  style='z-index:500;background-color:#333;position:fixed;top:0px;width:100%;opacity: 0.3;filter:alpha(opacity=30);'></div><div id='divMsg' style='top:" + b + "px;position:fixed;width:100%;z-index:10001; padding:20px 20px 0px; font-size:15px; text-align:center;color:#fff; '><table style='background-position: center; width: 492px; height: 265px;' background='/Quick Links/error.png' align='center'><tr><td valign='top'><table align='center' width='85%' border='0' style='margin-top: 55px; line-height: 20px;'><tr><td style='color: black; text-align: center; height: 130px; font-size: 12px !important;'>" + a + '</td></tr><tr><td align=\'center\'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id=\'btnOK\' type=\'button\' value=\'ok\'  style=\'width:70px\'onclick=\'javascript:try{GEI("TransScreen").style.display="none";GEI("divMsg").style.display="none";var   Elem= GEI("Msg")?GEI("Msg"):(GEI("lblMsg")?GEI("lblMsg"):GEI("lblException"));Elem.style.display="none";}catch(err){};\'></td></tr></table></td></tr></table></div>') } function WriteClientMessage(a) { var b = screen.height / 2 - 470 / 3; "" != a && (a = "<div id='TransScreen'  style='z-index:500;background-color:#333;position:fixed;top:0px;left:0px;width:100%;height:100%;opacity: 0.3;filter:alpha(opacity=30);'></div><div id='divMsg' style='top:" + b + "px;width:100%;position:fixed;z-index:10001; padding:20px 20px 0px; font-size:15px; text-align:center;color:#fff; '><table style='background-position: center; width: 492px; height: 265px;' background='/Quick Links/error.png' align='center'><tr><td valign='top'><table align='center' width='85%' border='0' style='margin-top: 55px; line-height: 20px;'><tr><td style='color: black; text-align: center; height: 130px; font-size: 12px;'>" + a + '</td></tr><tr><td align=\'center\'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id=\'btnOK\' type=\'button\' value=\'ok\'  style=\'width:70px\'onclick=\'javascript:try{GEI("TransScreen").style.display="none";GEI("divMsg").style.display="none";var   Elem= GEI("Msg")?GEI("Msg"):(GEI("lblMsg")?GEI("lblMsg"):GEI("lblException"));Elem.style.display="none";}catch(err){};\'></td></tr></table></td></tr></table></div>', document.getElementById("divclMsg").innerHTML = a) } function GEI(a) { return document.getElementById(a) } function resetTabs() { $("#content > div").hide(); $("#tabs a").attr("id", "") } var style = "<style type='text/css'>#footer{background-color:#12535d;float:left; width:100%; margin:0 0 0 0; position:relative;} #footerInner{width:1000px;font-size:10px;color:#cdcdcd;margin:10px auto} #footerInner h4{font-family:Verdana;font-size:15px;font-weight:400;color:#89aaaf;width:33%;border-bottom:1px dotted #89aaaf} .footerInnertxt{width:25%;float:left;border-right:1px solid #285f68;margin-left:5%} .footerInnertxt1{width:30%;float:left;border-right:1px solid #285f68;margin-left:5%} .footerInnertxt2{width:5%;float:left;border-right:1px solid #285f68;margin-left:5%} .footerInnertxt a,.footerInnertxt1 a,.footerInnertxt2 a{color:#89aaaf;text-decoration:none;border-bottom:1px dotted #33707a;display:block;height:25px;line-height:25px;padding-left:10px;font-family:Verdana;width:65%} .footerInnertxt a:hover,.footerInnertxt1 a:hover,.footerInnertxt2 a:hover{color:#acced3} #footerInnerRgt{width:400px;float:right;text-align:right} #footerInner p{text-align:right;width:90px;float:right;margin-right:0} #OuterPan{position:absolute;z-index:999;width:100%;left:0;height:1px} .resolution{width:100%;float:left;text-align:center; font-size:10px; color:#89aaaf; padding:10px 0;} #DivServer{position:fixed;right:10px;bottom:0;background-color:#12535d;font-size:10px;font-weight:700;color:#fff;padding:5px} #current{z-index:3;border-bottom-color:#3d3d3d}  </style>";
var Footer = '<div class="footer"> </div><div id="DivServer">' + ServerName + '</div>'; document.write(style + Footer); var h = screen.height, w = screen.Width; try { var Elem = GEI("Msg") ? GEI("Msg") : GEI("lblMsg") ? GEI("lblMsg") : GEI("lblException"); null != Elem && (WriteMessage(Elem.innerHTML), Elem.style.display = "none") } catch (err$$1) { alert(err$$1.message) } var myUrl = window.location.href, myUrlTab = myUrl.substring(myUrl.indexOf("#")), myUrlTabName = myUrlTab.substring(0, 4); (function () { $("#content > div").hide(); $("#tabs li:first a").attr("id", "current"); $("#content > div:first").fadeIn(); $("#tabs a").on("click", function (a) { a.preventDefault(); "current" != $(this).attr("id") && (resetTabs(), $(this).attr("id", "current"), $($(this).attr("rel")).fadeIn()) }); for (i = 1; i <= $("#tabs li").length; i++) myUrlTab == myUrlTabName + i && (resetTabs(), $("a[rel='" + myUrlTab + "']").attr("id", "current"), $(myUrlTab).fadeIn()) })();


function errorFunction(msg) {
    //debugger;
    if ((msg != '') && (msg != undefined)) {
        $.ajax({
            type: "POST",
            url: "http://localhost//portal//ExceptionMessageService.asmx//GetMessage",
            data: "{Message:'" + msg + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: false,
            success: function (response) {
                //debugger;
                //msg = response;
                msg = response.d;
            }
                ,
            error: function (errorMsg) {
                //debugger;
                return msg;
            }
        });
    }
    return msg;
}







