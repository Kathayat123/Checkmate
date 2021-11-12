
//function abc() {
//    var a = ['', 'one ', 'two ', 'three ', 'four ', 'five ', 'six ', 'seven ', 'eight ', 'nine ', 'ten ', 'eleven ', 'twelve ', 'thirteen ', 'fourteen ', 'fifteen ', 'sixteen ', 'seventeen ', 'eighteen ', 'nineteen '];
//    var b = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'];

//    function inWords(num) {
//        if ((num = num.toString()).length > 9) return 'overflow';
//        n = ('000000000' + num).substr(-9).match(/^(\d{2})(\d{2})(\d{2})(\d{1})(\d{2})$/);
//        if (!n) return; var str = '';
//        str += (n[1] != 0) ? (a[Number(n[1])] || b[n[1][0]] + ' ' + a[n[1][1]]) + 'crore ' : '';
//        str += (n[2] != 0) ? (a[Number(n[2])] || b[n[2][0]] + ' ' + a[n[2][1]]) + 'lakh ' : '';
//        str += (n[3] != 0) ? (a[Number(n[3])] || b[n[3][0]] + ' ' + a[n[3][1]]) + 'thousand ' : '';
//        str += (n[4] != 0) ? (a[Number(n[4])] || b[n[4][0]] + ' ' + a[n[4][1]]) + 'hundred ' : '';
//        str += (n[5] != 0) ? ((str != '') ? 'and ' : '') + (a[Number(n[5])] || b[n[5][0]] + ' ' + a[n[5][1]]) + 'only ' : '';
//        return str;
//    }
//}

//function GetHindiNumChrecter(opt) {
//    var retVal = "";
//    switch (opt) {
//        case 1:
//            retVal = "१";
//            break;

//        case 2:
//            retVal = "२";
//            break;

//        case 3:
//            retVal = "३";
//            break;

//        case 4:
//            retVal = "४";
//            break;

//        case 5:
//            retVal = "५";
//            break;

//        case 6:
//            retVal = "६";
//            break;

//        case 7:
//            retVal = "७";
//            break;

//        case 8:
//            retVal = "८";
//            break;

//        case 9:
//            retVal = "९";
//            break;
//    }

//    return retVal;
//}

//function GetHindiYear(string) {
//    var str = string;
//    for (var i = 0; i < str.length - 1; i++) {
//        var res = str.charAt(i);
//        alert(res);
//        //str.replace(GetHindiNumChrecter(str.charAt(i)), str.charAt(i));
//    }
//    return str;
//}

function TimeTick() {
    if (langid == 'en-US') {
        timeLocal = new Date;
        timeLocal.setMilliseconds(timeLocal.getMilliseconds() - millDiff);
        var e = new Array(7);
        e[0] = "Sunday";
        e[1] = "Monday";
        e[2] = "Tuesday";
        e[3] = "Wednesday";
        e[4] = "Thursday";
        e[5] = "Friday";
        e[6] = "Saturday";
        var t = e[timeLocal.getDay()];
        var n = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
        //var r = timeLocal.getDate(); if (r < 10) { r = "0" + r } var i = t + ",  " + n[timeLocal.getMonth()] + " " + r + ",  " + timeLocal.getFullYear() + " " + timeLocal.toLocaleTimeString();
        var r = timeLocal.getDate(); if (r < 10) { r = "0" + r } var i = t + ", " + r + " " + n[timeLocal.getMonth()] + " " + timeLocal.getFullYear() + " " + timeLocal.toLocaleTimeString();
        document.getElementById("spanTime").innerHTML = i;
    }
    else {

        //        var z = timeLocal.toLocaleTimeString();
        //        z[9] = "प्रातः";
        //        z[10] = "सायं";

        timeLocal = new Date;
        timeLocal.setMilliseconds(timeLocal.getMilliseconds() - millDiff);
        var e = new Array(7);
        e[0] = "रविवार";
        e[1] = "सोमवार";
        e[2] = "मंगलवार";
        e[3] = "बुधवार";
        e[4] = "गुरूवार";
        e[5] = "शुक्रवार";
        e[6] = "शनिवार";

        //var aaa = GetHindiYear("2015");

        var t = e[timeLocal.getDay()];
        var n = ["जनवरी", "फरवरी", "मार्च", "अप्रैल", "मई", "जून", "जुलाई", "अगस्त", "सितंबर", "अक्टूबर", "नवम्बर", "दिसंबर"];
        //var r = timeLocal.getDate(); if (r < 10) { r = "0" + r } var i = t + ",  " + n[timeLocal.getMonth()] + " " + r + ",  " + timeLocal.getFullYear() + " " + timeLocal.toLocaleTimeString().replace('PM', 'मध्याह्नः').replace('AM', 'पूर्वाह्न');
        var r = timeLocal.getDate(); if (r < 10) { r = "0" + r } var i = t + ", " + r + " " + n[timeLocal.getMonth()] + " " + timeLocal.getFullYear() + " " + timeLocal.toLocaleTimeString();
        document.getElementById("spanTime").innerHTML = i;
    }
}
var timeLocal = new Date;
millDiff = timeLocal - timeServer;

//window.onload = function () 
//{
//    var e = setInterval("TimeTick()", 10)
//}

//function __showTimer() {
//    var e = setInterval("TimeTick()", 10)
//}

//window.addEventListener("load", __showTimer, false);

//function showCustoTimer() {
//    var e = setInterval("TimeTick()", 10)
//}

//if (window.addEventListener) {
//    window.addEventListener('load', showCustoTimer, false);
//}
//else if (window.attachEvent) {
//    window.attachEvent('onload', showCustoTimer);
//}