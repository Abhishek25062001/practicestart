<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobtn.aspx.cs" Inherits="practicestart.radiobtn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            select gender 
        </h1>
        <asp:RadioButton ID="female" runat="server" GroupName="gen" Text="mummy" />
        <asp:RadioButton ID="male" runat="server" GroupName="gen" Text="papa"/>
        <asp:RadioButton ID="other" runat="server" GroupName="gen" Text="bhai" />
        <br />
        <br />
        <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_Click" />
        <asp:Label ID="message" runat="server"></asp:Label>
    </form>
</body>
</html>
