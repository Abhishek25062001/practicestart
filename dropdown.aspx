<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="practicestart.dropdown" EnableViewState="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="350" Font-Size="Large" Font-Names="Comic Sans MS" ForeColor="DarkBlue">
           

        </asp:DropDownList>


        <asp:DropDownList ID="DropDownList2" runat="server" Width="350" Font-Size="Large" Font-Names="Comic Sans MS" ForeColor="DarkBlue" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="False" Text="select prabhu ji"></asp:ListItem>
            <asp:ListItem Value="1">krishna</asp:ListItem>
            <asp:ListItem Value="2">ram</asp:ListItem>
            <asp:ListItem Value="3">kalki</asp:ListItem>
            <asp:ListItem Value="4">hanuman</asp:ListItem>
            <asp:ListItem Value="5">anjaniputra</asp:ListItem>
            <asp:ListItem Value="6">mahavir</asp:ListItem>
            <asp:ListItem Value="7" Text="balram"></asp:ListItem>

        </asp:DropDownList>
        <asp:Label ID="txt" runat="server" Text=""></asp:Label>


        <br />
        <br />
        <br />
        <hr />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>


        <asp:DropDownList ID="drop1" runat="server" Width="350" Font-Size="Large" ForeColor="DarkGreen" Font-Names="Comic Sans MS">
            <asp:ListItem Text="Selct any"></asp:ListItem>
            <asp:ListItem Text="ram"></asp:ListItem>
            <asp:ListItem Text="krishna"></asp:ListItem>
            <asp:ListItem Text="sudhama"></asp:ListItem>
            <asp:ListItem Text="radha"></asp:ListItem>
            <asp:ListItem Text="yashoda"></asp:ListItem>
        </asp:DropDownList>
        <%--  <asp:RequiredFieldValidator
            ID="RequiredFieldValidator1"
            runat="server"
            ErrorMessage="*please select an option"
            ControlToValidate="drop1"
            ForeColor="#CC0000"
            InitialValue="Selct any"></asp:RequiredFieldValidator>--%>
        <asp:Button ID="clear" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" Width="100" OnClick="clear_Click" Text="clear" />
        <asp:Button ID="count" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" OnClick="count_Click" Text="count" /> 
        <asp:Button ID="itemselect" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" OnClick="itemselect_Click" Text="select-item" />
        <asp:Button ID="selectvalue" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" OnClick="selectvalue_Click" Text="select-value" />
        <asp:Button ID="selectindex" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50"  OnClick="selectindex_Click" Text="select-index" />
        <asp:Button ID="addbtn" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" Width="100" OnClick="addbtn_Click" Text="ADD" />

          <asp:Button ID="remove" runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" Width="100" OnClick="remove_Click" Text="REMOVE" />



        <br />
        <asp:Label ID="txt1" runat="server" Text="">
        </asp:Label>
        <br />
        <asp:TextBox ID="add" runat="server" placeholder="enter here" Height="50" Width="350"></asp:TextBox>
        <asp:Button ID="save"
            runat="server"
            Text="save"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            Font-Size="Large" Height="50" Width="100"
            OnClick="save_Click" />
    </form>
</body>
</html>
