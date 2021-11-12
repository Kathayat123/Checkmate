﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AttendanceSheet/Schedule.master" AutoEventWireup="true" CodeFile="GenerateAttendanceSheet.aspx.cs" Inherits="SchedulerSep2014_GenerateRoaster" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css" media="print,screen">
        th {
            font-family: Arial;
            color: black;
            background-color: lightgrey;
        }

        thead {
            display: table-header-group;
        }

        tbody {
            display: table-row-group;
        }

        .style1 {
            padding-left: 8px;
        }

        .style4 {
            width: 5%;
            height: 1px;
        }

        .style6 {
            height: 1px;
        }

        .style7 {
            font-size: 14px;
            color: #9d6272;
            font-family: Arial;
            font-weight: bold;
            text-align: left;
            padding-left: 27px;
            height: 1px;
        }

        .style8 {
            height: 10px;
        }

        .auto-style1 {
            height: 7px;
        }

        .input-btn {
            background-color: #186ca3;
            border: none;
            border-radius: 4px;
            margin: 3px 0;
            padding: 10px;
            width: 100%;
            color: #fff;
            font-size: 15px;
            -webkit-border-radius: 10px;
            color: #FFFFFF;
            cursor: pointer;
            display: inline-block;
            font-family: Arial;
            text-decoration: none;
        }

            .input-btn:hover {
                background-color: #027baf;
                border: none;
                color: #fff;
                font-size: 15px;
                border-radius: 4px;
            }
    </style>

    <script language="Javascript" type="text/javascript">
        /* ================= ONLY Alphabets=========================================================================== */
        function ValidateAlpha() {
            var keyCode = window.event.keyCode;
            if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32) {
                window.event.returnValue = false;
                alert("Enter only Aplhabets");
            }
        }
        /* =========================================================================================== */
        /* Numeric Checking */

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                alert("Enter a valid number");
                return false;
            }

            return true;
        }
        /*======================================================================================== */
        /*----------------------------------------------------------------------------- */

        function SelectAllCheckboxes(spanChk) {

            // Added as ASPX uses SPAN for checkbox

            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ?
                spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;

            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" &&
                      elm[i].id != theBox.id) {

                    //elm[i].click();
                    if (elm[i].checked != xState)
                        elm[i].click();
                    //elm[i].checked=xState;

                }

        }

        //sINGLE check


        // Let's use a lowercase function name to keep with JavaScript conventions

    </script>
    <script type="text/javascript" language="javascript">
        function back() {
            history.back(-1);
        }



        function printStatement() {
            var owin = window.open("", "PrintWindow", "height=100, width=100, top=0, left=0")
            owin.document.body.innerHTML = gendiv.innerHTML;
            owin.print();
            owin.close();
        }


    </script>


    <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="0">
    </asp:ScriptManager>

    <table align="left" style="width: 100%">
        <tr id="trcenterlist" runat="server" visible="false">
            <td class="LeftTd" colspan="12" valign="top">Select One Centre:
            <br />
                <asp:DropDownList ID="rbCenterName" runat="server" Width="556px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style6"></td>
            <td class="style7"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
            <td class="style4"></td>
        </tr>
        <tr>
            <td class="LeftTd" colspan="12">Select Exam Date</td>
        </tr>
        <tr>
            <td class="style1" colspan="12">
                <asp:RadioButtonList ID="rbExamDate" runat="server" AutoPostBack="false"
                    CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px"
                    ClientIDMode="Static"
                    Width="206px">
                    <asp:ListItem Selected="True" Value="2019-07-03">03 July 2019</asp:ListItem>
                    <asp:ListItem Value="2019-07-04">04 July 2019</asp:ListItem>
                    <asp:ListItem Value="2019-07-05">05 July 2019</asp:ListItem>
                    <asp:ListItem Value="2019-07-06">06 July 2019</asp:ListItem>
                    <asp:ListItem Value="2019-07-07">07 July 2019</asp:ListItem>
                    <asp:ListItem Value="2019-07-08">08 July 2019</asp:ListItem>


                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="12" class="style8"></td>
        </tr>
        <tr>
            <td class="LeftTd" colspan="12">Select Slot No.</td>
        </tr>
        <tr>
            <td class="style1" colspan="12">
                <asp:RadioButtonList ID="rbSlot" runat="server" AutoPostBack="false"
                    CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px"
                    Height="20px" ClientIDMode="Static"
                    Width="240px">
                    <asp:ListItem Selected="True" Value="1">Slot 1</asp:ListItem>
                    <asp:ListItem Value="2">Slot 2</asp:ListItem>
                    <asp:ListItem Value="3">Slot 3</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="12" class="style8"></td>
        </tr>

        <tr style="display: none;">
            <td class="LeftTd" colspan="12">Select Roster</td>
        </tr>
        <tr>
            <td style="display: none;" class="style1" colspan="12">
                <asp:RadioButtonList ID="rdroster" runat="server" AutoPostBack="false"
                    CssClass="tdTotal" Font-Bold="True" Font-Names="Verdana" Font-Size="10px"
                    ClientIDMode="Static"
                    Width="240px">
                    <asp:ListItem Selected="True" Value="Online">Online</asp:ListItem>
                    <%--<asp:ListItem Value="Offline">Offline</asp:ListItem>--%>
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" colspan="2">
                <asp:Button ID="btnCreate" runat="server" Text="Generate Roster" Width="134px" BackColor="#51571B" Style="color: white;" class="input-btn" OnClientClick="target ='_blank';"
                    OnClick="btnCreate_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnExportToExcel" runat="server" Text="Export To Excel" Visible="true" Width="134px" BackColor="#51571B" Style="color: white;" class="input-btn"
                     OnClick="btnExportToExcel_Click" />

                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Exit" Width="134px" BackColor="#51571B" Style="color: white;" class="input-btn" PostBackUrl="~/AttendanceSheet/Login.aspx" />

                <asp:Label ID="Label12" runat="server" CssClass="box-head"
                    Visible="False"></asp:Label>
            </td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="12"></td>
        </tr>
        <tr id="trrow1" runat="server" visible="true">
            <td colspan="12" valign="middle" align="left" class="auto-style1">
                <%--   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>--%>
                <%--       </ContentTemplate>
            </asp:UpdatePanel>--%>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                <br />
            </td>
        </tr>
        <tr id="trrow11" runat="server" visible="true">
            <td colspan="12" valign="middle" align="left" style="height: 7px">&nbsp;</td>
        </tr>
    </table>


</asp:Content>

