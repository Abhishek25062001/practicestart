<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listbox.aspx.cs" Inherits="practicestart.listbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 29px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" style="border: 4px solid #808080">
        <table align="center" cellpadding="2" style="border: 2px solid black; width: 100%">
            <tr style="border: 2px solid black">
                <td align="center" colspan="8" style="border: 2px solid black; background-color: #00FFFF;">Company entry</td>

            </tr>
            <tr style="border: 2px solid black">
                <td align="center" colspan="4" style="border-style: solid; border-width: 2px; background-color: #00CC00">Input</td>
                <td align="center" colspan="4" style="border-style: solid; border-width: 2px; background-color: #00CC00">Output</td>

            </tr>
            <tr>
                <td align="center" colspan="2" style="border: 2px solid black; background-color: #0033CC;">2021-22</td>
                <td align="center" colspan="2" style="border: 2px solid black; background-color: #0033CC;">2023-24</td>
                <td align="center" colspan="2" style="border: 2px solid black; background-color: #0033CC;">2021-22</td>
                <td align="center" colspan="2" style="border: 2px solid black; background-color: #0033CC;">2023-24</td>

            </tr>
            <tr align="center" style="background-color: orangered; border: 2px solid black">
                <td>2021</td>
                <td>2022</td>
                <td>2023</td>
                <td>2024</td>
                <td>2021</td>
                <td>2022</td>
                <td>2023</td>
                <td>2024</td>
            </tr>
            <tr align="center">
                <td>2022</td>
                <td>2304</td>
                <td>2304</td>
                <td>2304</td>
                <td>2304</td>
                <td>2304</td>
                <td>2304</td>
                <td>2304</td>
            </tr>
            <tr align="center">
                <td>4568</td>
                <td>2023</td>
                <td>2334</td>
                <td>2334</td>
                <td>2334</td>
                <td>2334</td>
                <td>2334</td>
                <td>2334</td>
            </tr>
            <tr align="center">
                <td>2024</td>
                <td>2321</td>
                <td>2321</td>
                <td>2321</td>
                <td>2321</td>
                <td>2321</td>
                <td>2321</td>
                <td>2321</td>
            </tr>
            <tr align="center">
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
                <td>10002</td>
            </tr>
            <tr align="center">
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
                <td>20002</td>
            </tr>
            <tr align="center">
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
                <td>32002</td>
            </tr>
        </table>



        <%--  <table align="center" cellpadding="2" class="auto-style1">
            <tr>
                <td align="center" colspan="2">table</td>

            </tr>
            <tr>
                <td class="border" rowspan="2" align="center">
                    <asp:ListBox ID="ListBox1" runat="server" Rows="5"></asp:ListBox></td>
                <td><asp:TextBox ID="txtbox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
               
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td rowspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
              
                <td>&nbsp;</td>
            </tr>
        </table>--%>



        <table align="center" cellpadding="3" cellspacing="4" class="auto-style1">
            <tr>
                <td align="center" colspan="2">listbox</td>
               
            </tr>
            <tr>
                <td>
                    <asp:ListBox ID="ListBox1" SelectionMode="Multiple" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                     
                    </asp:ListBox></td>
                <td>
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td ">
                    <br />
                    <br />

                    <asp:Label ID="showtxt" runat="server" Text=""></asp:Label>
                </td>
                <td >
                    <br /><br /><br />
                    <asp:Button ID="add" runat="server" Text="add" OnClick="add_Click" />
                    <asp:Button ID="remove" runat="server" Text="remove" OnClick="remove_Click" />
                    <asp:Button ID="show" runat="server" Text="show" OnClick="show_Click"/>
                    <asp:Button ID="count" runat="server" Text="count" OnClick="count_Click" />
                
                 
                </td>
            </tr>
            </table>



    </form>
</body>
</html>
