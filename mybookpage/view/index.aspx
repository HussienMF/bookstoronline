<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="mybookpage.view.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="../assets/lib/css/all.min.css">
    <link rel="stylesheet" href="../assets/lib/css/all.css">
    <link rel="stylesheet" href="../assets/lib/css/masterlogpage.css">
</head> 
<body>
    <form id="form1" runat="server">
    <header>
        <div class="container">
            <i class="fa-solid fa-book-open-reader"></i>
            <h1>BookShop.Org</h1>
          
        </div>
    </header>

    <hr>
  
    <div class="contain">

            <div class="user">
                <label for="" class="label-text">User Name</label>
                <input type="text" placeholder="User Name" autocomplete="off" class="form-control" Id="UnameTb" runat="server">
            </div>
            <div class="password">
                <label for="" class="label-text">password</label>
                <input type="password" placeholder="password" autocomplete="off" class="form-control2" Id="passwordTb" runat="server">
            </div>
            <div class="log-btn">
             <asp:label runat="server" ID="ErrMsg" class="ErrMsg" ></asp:label>
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="New Account" />
                <asp:Button  class="Login" ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
            </div>
        
    </div>
       
    </form>
</body>
</html>
