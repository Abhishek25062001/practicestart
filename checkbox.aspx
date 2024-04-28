<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="practicestart.checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <h1>select option</h1>
        <%--<asp:CheckBox ID="CheckBox1" runat="server" Text="check it to proceed" /><br />--%>
        <asp:CheckBox ID="c1" runat="server" Text="bca"/><br />
        <asp:CheckBox ID="c2" runat="server" Text="btech"/><br />
        <asp:CheckBox ID="c3" runat="server" Text="bba"/><br />
        <asp:Label ID="whatselect" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="submit" runat="server" Text="save" OnClick="submit_Click" /><br />


        <h2>
            hello sir select your cources
        </h2>
        <asp:CheckBox ID="CheckBox1" runat="server" Checked Text="jee" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged1"/><br />
        <asp:CheckBox ID="CheckBox2" runat="server" Enabled="false" Text="main" AutoPostBack="True"/><br />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="advance" AutoPostBack="True"/><br />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="neet" AutoPostBack="True"/><br />
        <asp:Label ID="Label1" runat="server" Text=""><br />

        </asp:Label><asp:Button ID="btn" runat="server" Text="submit" OnClick="btn_Click" />
    </form>
</body>
</html>
