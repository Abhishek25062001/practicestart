<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiobtnlist.aspx.cs" Inherits="practicestart.radiobtnlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1" Text="delhi"></asp:ListItem>
                <asp:ListItem Value="2" Text="up"></asp:ListItem>
                <asp:ListItem Value="3" Text="madhtapradesh"></asp:ListItem>
                <asp:ListItem Value="2" Text="keral"></asp:ListItem>
                <asp:ListItem Value="2" Text="tamilnadu"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="Button1" runat="server" Text="direction-change" BackColor="Blue" BorderColor="Red" BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" OnClick="Button1_Click" />
        </div>

        <hr />
        <hr />
        <asp:Image ID="Image1" runat="server" Width="200" Height="200" />
        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
        </asp:CheckBoxList>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
            <asp:ListItem Value="0" Text="beach.jpg"></asp:ListItem>
            <asp:ListItem Value="1" Text="boat.jpg"></asp:ListItem>
            <asp:ListItem Value="2" Text="jharna.avif"></asp:ListItem>
            <asp:ListItem Value="3" Text="tree.avif"></asp:ListItem>
        </asp:RadioButtonList>
        <hr />
        <hr />
        <hr />
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" DataSourceID="XmlDataSource1" DataTextField="name" DataValueField="id">
        </asp:RadioButtonList>
      
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/checkboxdatasource.xml"></asp:XmlDataSource>

        <hr />
        <h2>
            check box list
        </h2>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="name" DataValueField="id">
        </asp:CheckBoxList>
      <hr color="green" />

       <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practiceConnectionString %>" SelectCommand="SELECT * FROM [Qualification]"></asp:SqlDataSource>

        <asp:CheckBoxList ID="CheckBoxList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Qualification" DataValueField="QualificationCode"></asp:CheckBoxList>
      --%>
    </form>
</body>
</html>
