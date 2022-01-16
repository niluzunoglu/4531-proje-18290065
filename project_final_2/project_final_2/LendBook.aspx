<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LendBook.aspx.cs" Inherits="project_final_2.LendBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Üyeye Kitap Teslimi</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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
    .mydropdownlist
{
color: black;
font-size: 17px;
padding: 5px 10px;
border-radius: 5px;
background-color: blanchedalmond;
font-weight: bold;
align-items:center;
}
</style>

</head>
<body>
    <form id="form1" runat="server">

        <div align="center">

            <h3> <br /> <br />
Üyeye Kitap Teslimi Sayfası           <br />      
                <small class="text-muted">Kitap teslimi işlemlerinizi buradan gerçekleştirebilirsiniz.</small> <br /> <br />
            </h3>

            <h4> Kitap Adı Seçiniz:</h4>
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
        </p>
        <p>
            <br /><br />
            <h4>Üyenin Adı ve Soyadını Seçiniz: </h4>
        </p>
        <p>
            <asp:DropDownList ID="name" runat="server" OnSelectedIndexChanged="name_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
            <asp:DropDownList ID="surname" runat="server" OnSelectedIndexChanged="surname_SelectedIndexChanged" CssClass="mydropdownlist">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Button ID="lend" runat="server" Height="56px" CssClass="button-29" OnClick="lend_Click" Text="Ödünç Ver" Width="165px" /> 


        </div>
    </form>
  
</body>
</html>
