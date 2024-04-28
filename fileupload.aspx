<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileupload.aspx.cs" Inherits="practicestart.fileupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                file upload example
            </h1>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnupload" runat="server" Text="upload" OnClick="btnupload_Click" />
              <br />
  <br />
            <asp:Label ID="lblupload" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
