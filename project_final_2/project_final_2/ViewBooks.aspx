<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="project_final_2.ViewBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kitap Listesi</title>

   
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
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="bookid" HeaderText="Kitap Kodu" InsertVisible="False" ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="bookname" HeaderText="Kitap İsmi" SortExpression="bookname" />
                <asp:BoundField DataField="writer" HeaderText="Kitap Yazarı" SortExpression="writer" />
                <asp:CheckBoxField DataField="in_library" HeaderText="Kütüphanede mi?" SortExpression="in_library" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library_finalConnectionString %>" SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
    </form> 

    </div>
</body>
</html>
