<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AttendanceSheet.aspx.cs" Inherits="SchedulerJune2016_Roster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DUET Attendance Sheet</title>
</head>
<body onload="window.print()">
    <style type="text/css" media="print">
        @media print {
            body {
                -webkit-print-color-adjust: exact;
                margin-left: 20px;
                margin-right: 20px;
                margin-top: 20px;
                margin-bottom: 20px;
                /*margin: 0;*/
                zoom: 77%;
                
            }
        }

        @page {
            size: A4 portrait;
            -webkit-print-color-adjust: exact;
            
            /*margin: 0;*/
            margin-left: 20px;
            margin-right: 20px;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>

    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="0">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <table>
                        <tr>
                            <td>
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

</body>
</html>
