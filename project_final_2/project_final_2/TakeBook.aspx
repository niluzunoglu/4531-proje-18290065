<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TakeBook.aspx.cs" Inherits="project_final_2.TakeBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kitap İadesi</title>
 
    <style>
/* CSS */
.button-29 {
  align-items: center;
  appearance: none;
  background-image: radial-gradient(100% 100% at 100% 0, #5adaff 0, #5468ff 100%);
  border: 0;
  border-radius: 6px;
  box-shadow: rgba(45, 35, 66, .4) 0 2px 4px,rgba(45, 35, 66, .3) 0 7px 13px -3px,rgba(58, 65, 111, .5) 0 -3px 0 inset;
  box-sizing: border-box;
  color: brown;
  cursor: pointer;
  display: inline-flex;
  font-family: Helvetica;
  height: 48px;
  justify-content: center;
  line-height: 1;
  list-style: none;
  overflow: hidden;
  padding-left: 16px;
  padding-right: 16px;
  position: relative;
  text-align: left;
  text-decoration: none;
  transition: box-shadow .15s,transform .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  will-change: box-shadow,transform;
  font-size: 18px;
}

.button-29:focus {
  box-shadow: #3c4fe0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
}

.button-29:hover {
  box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
  transform: translateY(-2px);
}

.button-29:active {
  box-shadow: #3c4fe0 0 3px 7px inset;
  transform: translateY(2px);
}


    </style>

    <style>
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

    <style>
       
    .mydropdownlist
{
color: black;
font-size: 17px;
padding: 5px 10px;
border-radius: 5px;
font-weight: bold;
align-items:center;
}
</style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">

            <h3> <br /><br />
                Geçmiş ve Mevcut İşlemler <br />                   
                <small class="text-muted">İşlemleri yaparken bu tablodan yardım alabilirsiniz.</small>
                </h3> 
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="tid" DataSourceID="SqlDataSource1" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True" >
                <AlternatingRowStyle BackColor="White"/>
                <Columns>
                    <asp:BoundField DataField="tid" HeaderText="İşlem Kodu" InsertVisible="False" ReadOnly="True" SortExpression="tid" />
                    <asp:BoundField DataField="date_of_start" HeaderText="Kitap Alınma Tarihi" SortExpression="date_of_start" />
                    <asp:BoundField DataField="date_of_end" HeaderText="Kitap Verilme Tarihi" SortExpression="date_of_end" />
                    <asp:BoundField DataField="memberid" HeaderText="Üye Kodu" SortExpression="memberid" />
                    <asp:BoundField DataField="bookid" HeaderText="Kitap Kodu" SortExpression="bookid" />
                </Columns>
               
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library_finalConnectionString %>" SelectCommand="SELECT * FROM [Transactions]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </di>


        <asp:Label ID="Label1" runat="server" Text="Üye Bilgileri"></asp:Label>
        <p>
            <asp:DropDownList ID="memberName" runat="server" OnSelectedIndexChanged="memberName_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
            <asp:DropDownList ID="memberSurname" runat="server" OnSelectedIndexChanged="memberSurname_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Kitap Bilgisi"></asp:Label>
        </p>
        <p>
            <asp:DropDownList ID="book" runat="server" OnSelectedIndexChanged="book_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Button ID="takeBookBack" runat="server" CssClass="button-29" Height="59px" OnClick="takeBookBack_Click" Text="Kitap İadesi" Width="153px" />
    </form>
</body>
</html>
