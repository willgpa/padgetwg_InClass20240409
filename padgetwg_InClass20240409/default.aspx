<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="padgetwg_InClass20240409._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ListBoxCssClass
        {
            color:GhostWhite;
            background-color:DarkOliveGreen;
            font-family:Courier New;
            font-size:large;
            font-style:italic;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lblFruits" runat="server" CssClass="ListBoxCssClass" Height="127px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True" Width="155px" DataSourceID="SqlDataSourceinClass20240409" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>fruits</asp:ListItem>
                <asp:ListItem>plum</asp:ListItem>
                <asp:ListItem>apple</asp:ListItem>
                <asp:ListItem>guava</asp:ListItem>
                <asp:ListItem>Avacado</asp:ListItem>
            </asp:ListBox>
          
            <asp:SqlDataSource ID="SqlDataSourceinClass20240409" runat="server" ConnectionString="Data Source=lcb-sql.uccob.uc.edu\nicholdw;Persist Security Info=True;User ID=IS3050Login;Password=Akash42!;" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass20240409.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
          
        </div>
          <asp:Label ID="lblChosenFruit" runat="server" Text="Label">Select a Fruit</asp:Label>
    </form>
</body>
</html>
