<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileuploaddemo2.aspx.cs" Inherits="practicestart.fileuploaddemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>file upload example with condition
            </h1>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnupload" runat="server" Text="upload" OnClick="btnupload_Click" />
            <br />
            <br />
            <asp:Label ID="lblupload" runat="server" ForeColor="Green" Text=""></asp:Label>

            <br />
            <br />
            <asp:Label ID="lbluploadfail" runat="server" ForeColor="Red" Text=""></asp:Label>

        </div>
        <hr color="green" style="height: 20px; width: 60%" />

        <div>
            <h1>file upload example with condition and multiple file upload
            </h1>
            <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" />
            <br />
            <br />
            <asp:Button ID="btnupload2" runat="server" Text="upload" OnClick="btnupload2_Click"/>
            <br />
            <br />
            <asp:Label ID="lblupload2" runat="server" ForeColor="Green" Text=""></asp:Label>

            <br />
            <br />
            <asp:Label ID="lbluploadfail2" runat="server" ForeColor="Red" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
