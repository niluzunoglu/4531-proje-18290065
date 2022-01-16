<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMembers.aspx.cs" Inherits="project_final_2.ViewMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Üyeler</title>
    
    <style>
        .mydatagrid
{
width: 80%;
border: solid 2px black;
min-width: 80%;
}
.header
{
background-color: crimson;
font-family: Arial;
color: White;
border: none 0px transparent;
height: 25px;
text-align: center;
font-size: 16px;
}

.rows
{
background-color: #fff;
font-family: Arial;
font-size: 14px;
color: #000;
min-height: 25px;
text-align: center;
border: none 0px transparent;
}
.rows:hover
{
background-color:lavender;
font-family: Arial;
color: black;
text-align: center;
}
.selectedrow
{
background-color: lightsalmon;
font-family: Arial;
color: #fff;
font-weight: bold;
text-align: center;
}
.mydatagrid a /** FOR THE PAGING ICONS **/
{
background-color: Transparent;
padding: 5px 5px 5px 5px;
color: #fff;
text-decoration: none;
font-weight: bold;
}

.mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/
{
background-color: #000;
color: #fff;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
background-color: #c9c9c9;
color: #000;
padding: 5px 5px 5px 5px;
}
.pager
{
background-color: #646464;
font-family: Arial;
color: White;
height: 30px;
text-align: left;
}

.mydatagrid td
{
padding: 5px;
}
.mydatagrid th
{
padding: 5px;
}
 
    </style>
</head>
<body>
    <div align="center"> 
    <form id="form1" runat="server">
        <div align="center"> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="memberid" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" >
            <Columns>
                <asp:BoundField DataField="memberid" HeaderText="Üye Kodu" InsertVisible="False" ReadOnly="True" SortExpression="memberid" />
                <asp:BoundField DataField="firstname" HeaderText="İsim" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="Soyisim" SortExpression="lastname" />
                <asp:BoundField DataField="emailadress" HeaderText="E-Posta Adresi" SortExpression="emailadress" />
                <asp:BoundField DataField="phonenumber" HeaderText="Telefon Numarası" SortExpression="phonenumber" />
                <asp:CheckBoxField DataField="have_book" HeaderText="Kütüphaneden Kitap Aldı Mı?" SortExpression="have_book" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library_finalConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
        
</div>
    </form></div>
</body>
</html>
