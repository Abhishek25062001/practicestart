<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="drop3.aspx.cs" Inherits="practicestart.drop3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="drop1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drop1_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="drop2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drop2_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="dropdown3" runat="server" AutoPostBack="True"></asp:DropDownList>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
