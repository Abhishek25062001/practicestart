<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validationdemo1.aspx.cs" Inherits="practicestart.validationdemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #008000;
            background-color: #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="3">
                        <h1 align="center">form for validation</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="White" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="* THIS FIELD REQUIRED" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="labage" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="txtage" Display="Dynamic" ErrorMessage="* THIS FIELD REQUIRED" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RangeValidator ID="rangeage" runat="server" BackColor="White" ControlToValidate="txtage" Display="Dynamic" ErrorMessage="* age should be between 19-65 years" ForeColor="#FF3300" MaximumValue="65" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="lbldate" runat="server" Text="Date of Jurney"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="imgdate" runat="server" Height="20px" ImageAlign="AbsMiddle" ImageUrl="~/image/calendar.jpg" OnClick="imgdate_Click" />
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="White" ControlToValidate="txtdate" Display="Dynamic" ErrorMessage="* THIS FIELD REQUIRED" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Calendar ID="cld" runat="server" FirstDayOfWeek="Monday" OnSelectionChanged="cld_SelectionChanged" SelectedDate="04/28/2024 19:56:29" VisibleDate="2024-04-28">
                                    <TodayDayStyle BorderColor="#FF3300" />
                                </asp:Calendar>
                            </td>
                            <td>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" BackColor="White" ControlToValidate="txtdate" Display="Dynamic" ErrorMessage="* please select date within 90 days" ForeColor="#FF3300" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>

                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" BackColor="White" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="* THIS FIELD REQUIRED" ForeColor="#FF3300" InitialValue="0" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

    </form>
</body>
</html>
