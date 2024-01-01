<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="mybookpage.view.Admin.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../assets/lib/css/masterbookdetailenter.css">
    <link rel="stylesheet" href="../../assets/lib/css/all.css">
    <link rel="stylesheet" href="../../assets/lib/css/all.min.css">
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
        <div class="con">
                 <div class="Bookdetailinsert">
                 <h2>Book Details</h2>

                 <div class="BookName-div">
                    <label for="" class="label-text">Book Name </label>
                    <input type="text" placeholder="BookName" autocomplete="off" class="BookName" Id="BookName" runat="server">
                </div>
                <div class="BookWriter-div ">
                    <label for="" class="label-text">Book Writer </label>
                    <input type="text" placeholder="Book Writer" autocomplete="off" class="BookWriter" Id="BookWriter" runat="server">
                </div>
                <div class="BookDescription-div ">
                    <label for="" class="label-text">Book Description </label>
                    <input type="text" placeholder="Book Description" autocomplete="off" class="BookDescription" Id="BookDescription" runat="server">
                </div>
                <div class="BookPublisher-div ">
                    <label for="" class="label-text">Book Publisher </label>
                    <input type="text" placeholder="Book Publisher" autocomplete="off" class="BookPublisher" Id="BookPublisher" runat="server">
                </div>
                <div class="BookBookPublishyear-div ">
                    <label for="" class="label-text">Book Publish year</label>
                    <input type="text" placeholder="Book Publish year" autocomplete="off" class="BookPublishyear" Id="BookPublishyear" runat="server">
                </div>
                <div class="BookPageNumbers-div ">
                    <label for="" class="label-text">Book Page Numbers </label>
                    <input type="text" placeholder="Book Page Numbers" autocomplete="off" class="PageNumbers" Id="PageNumbers" runat="server">
                </div>
                <div class="BookGenre-div ">
                    <label for="" class="label-text">Book Genre </label>
                    <input type="text" placeholder="Book Genre" autocomplete="off" class="BookGenre" Id="BookGenre" runat="server">
                </div>
                <div class="BookPrice-div ">
                    <label for="" class="label-text">Book Price </label>
                    <input type="text" placeholder="Book Price" autocomplete="off" class="BookPrice" Id="BookPrice" runat="server">
                </div>
                     <div class="Addbook-div"> 
         

                <asp:Button ID="Addbook"  class="Addbook" runat="server" Text="Add book" OnClick="Addbook_Click" />

            </div>
            </div>
           
            
       
        
                 <asp:GridView  runat="server" ID="allbookgrid" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="allbookgrid_SelectedIndexChanged">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>
           
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Selected Box From DB" />
           
                 <br />
           
        </div>

<%--        <asp:FileUpload ID="FileUpload1" runat="server" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>--%>

    </form>
    </body>
</html>
