<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownsqlconnectio.aspx.cs" Inherits="practicestart.dropdownsqlconnectio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </div>

        <br />
        <br />
        <hr />
        <div>
            <h2>Select country</h2>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
        </div>

        <hr />
        <hr />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="drop1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drop1_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList ID="drop2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drop2_SelectedIndexChanged"></asp:DropDownList>
                <asp:DropDownList ID="drop3" runat="server"></asp:DropDownList>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
