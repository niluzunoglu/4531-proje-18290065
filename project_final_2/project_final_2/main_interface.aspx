<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main_interface.aspx.cs" Inherits="project_final_2.main_interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/logo-ct.png">
  <title>
    Libsoft 
  </title>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    

    <style>

        .transparentButton
{
            background-color:transparent;
            border: none;
            color:white;
            text-align: left;
            font-size:medium;

}
       

    </style>
    

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

    <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="./assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="./assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="./assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />


</head>

    <body class="g-sidenav-show  bg-gray-200">
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">

          <form id="form1" runat="server">


    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="http://ktp.isam.org.tr/ktpgenel/findrecords.php" target="_blank">
        <img src="./assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
          
        <span class="ms-1 font-weight-bold text-white">Libsoft Dashboard
      </a>
    </div> 


    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>


        <li class="nav-item">
          <a class="nav-link text-white ">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fas fa-book"></i>                
                <asp:Button ID="viewBooks" CssClass="transparentButton" runat="server" Text="Kitapları Görüntüle" Width="174px" OnClick="viewBooks_Click" />
            </div>
            <span class="nav-link-text ms-1"></span>
          </a>
        </li> 

             <li class="nav-item">
          <a class="nav-link text-white ">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                <i class="fas fa-book-reader"></i>               
                <asp:Button ID="viewMembers" CssClass="transparentButton" runat="server" Text="Üyeleri Görüntüle" OnClick="viewMembers_Click"  />
          </div> 
               <span class="nav-link-text ms-1"></span>

          </a>
        </li>


        <li class="nav-item">
          <a class="nav-link text-white " href="./pages/virtual-reality.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
               <i class="fas fa-adjust"></i>               
                <asp:Button ID="lendBook" runat="server" CssClass="transparentButton" Text="Üyelere Kitap Teslimi" Width="178px" OnClick="lendBook_Click" />

            </div>
            <span class="nav-link-text ms-1"></span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link text-white " href="./pages/rtl.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">format_textdirection_r_to_l</i>
              <asp:Button ID="Button1" runat="server" CssClass="transparentButton" Text="Üyelerden Kitap İadesi" OnClick="takeBook_Click" Width="175px" />

            </div>
            <span class="nav-link-text ms-1"></span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link text-white " href="./pages/notifications.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10 fontSize small">person</i>
              <asp:Button ID="addMember" CssClass="transparentButton" runat="server" OnClick="Button1_Click" Text="Üye Ekle" Width="172px" />
            </div>
            <span class="nav-link-text ms-1"></span>
          </a>
        </li>
        
          <li class="nav-item">
          <a class="nav-link text-white " href="./pages/notifications.html">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10 fontSize small">person</i>
            <asp:Button ID="addBook" CssClass="transparentButton" runat="server" Text="Kitap Ekle"  OnClick="addBook_Click" />
            </div>
            <span class="nav-link-text ms-1"></span>
          </a>
        </li> 
  </ul>
    </div>
  </aside>

      
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

      <div align="center"> 

          <h3> <br /> <br />
Libsoft'a Hoşgeldiniz!           <br />      
                <small class="text-muted">Libsoft, kütüphanenizin kayıtlarını tutabileceğiniz, üye ve kitap eklemeleri yapabileceğiniz,<br />
                    işlem geçmişinizi tutabileceğiniz bir uygulamadır.</small> <br /> <br />
            </h3>
          <br /> 
           <h2> Örnek üye tablosu (Yalnızca 5 kayıt gösterilmiştir.) </h2>      <br />

      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="memberid" DataSourceID="SqlDataSource2" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="memberid" HeaderText="memberid" InsertVisible="False" ReadOnly="True" SortExpression="memberid" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="emailadress" HeaderText="emailadress" SortExpression="emailadress" />
                <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" SortExpression="phonenumber" />
                <asp:CheckBoxField DataField="have_book" HeaderText="have_book" SortExpression="have_book" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:library_finalConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Members]"></asp:SqlDataSource>
        </span>
          <br />

                     <h2> Örnek kitap tablosu (Yalnızca 5 kayıt gösterilmiştir.) </h2>  <br />    

      &nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bookid" DataSourceID="SqlDataSource1" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="bookid" HeaderText="bookid" InsertVisible="False" ReadOnly="True" SortExpression="bookid" />
                <asp:BoundField DataField="bookname" HeaderText="bookname" SortExpression="bookname" />
                <asp:BoundField DataField="writer" HeaderText="writer" SortExpression="writer" />
                <asp:CheckBoxField DataField="in_library" HeaderText="in_library" SortExpression="in_library" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:library_finalConnectionString %>" SelectCommand="SELECT TOP 5 * FROM [Books]"></asp:SqlDataSource>
           <br />
          <br />


</div>
    </form>

     
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/material-dashboard.min.js?v=3.0.0"></script>
</body>

</html>
