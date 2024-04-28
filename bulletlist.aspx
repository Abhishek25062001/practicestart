<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bulletlist.aspx.cs" Inherits="practicestart.bulletlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="BulletedList1" runat="server" BorderWidth="10px" BulletImageUrl="~/image/boat.jpg" BulletStyle="CustomImage"></asp:BulletedList>
            <hr />
            <asp:Button ID="Button1" runat="server" Text="circle" OnCommand="Button1_Command" CommandName="circle" />
            <asp:Button ID="Button2" runat="server" Text="disk"  OnCommand="Button1_Command" CommandName="disk" />
            <asp:Button ID="Button3" runat="server" Text="square" OnCommand="Button1_Command"  CommandName="square"/>
            <asp:Button ID="Button4" runat="server" Text="numeric" OnCommand="Button1_Command" CommandName="numeric"/>
            <asp:Button ID="Button5" runat="server" Text="alphabet" OnCommand="Button1_Command" CommandName="alphabet"/>
            <asp:Button ID="Button6" runat="server" Text="roman" OnCommand="Button1_Command" CommandName="roman"/>
        </div>
    </form>
</body>
</html>
