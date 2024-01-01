<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="mybookpage.view.homepage" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  
 
    <link rel="stylesheet" href="../../assets/lib/css/master.css">
    <link rel="stylesheet" href="../../assets/lib/css/all.css">
    <link rel="stylesheet" href="../../assets/lib/css/all.min.css">
  
    <style type="text/css">
        .bookgrid {
            margin-top: 0px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <header>
        <div class="container">
            <i class="fa-solid fa-book-open-reader"></i>
            <h1>BookShop.Org</h1>
            <!-- <input id="searchInput" onkeyup="search()" type="text"  name="search" placeholder="  Search Books...."  > -->
            <input id="searchbar" onkeyup="search()" type="text"
            name="search" placeholder="Search books.."  runat="server" > 
    
        
         
            <asp:Button ID="Button1" runat="server" Text="Search" style=" display: inline;width: fit-content;border-radius: 0px;" OnClick="Button1_Click"/>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add more Books" Visible="False" style="border-radius:0px;padding: 10px;margin: 20px auto;    width: 90%;" />
        </div>
    </header>
    <hr>
  
<%--        <div class="contain">
            <img src="../../assets/images/none.jpg" alt="not downloaded" style="width: 300px;height: 400px;" class="image-homepage" id="changehomepage" >
            <div class="detail-book">
                <h2 style="font-size: 50px;" id="booktitlehome">ثم لم يبق احد</h2>
                <h3 id="bookdiscriptionhome">عشرة أشخاص لا يجمعهم أي قاسم مشترك ولا انسجام بينهم اجتذبتهم دعوة غامضة إلى جزيرة مقفرة معزولة.
                    وفجأة خلال تناول العشاء دوى تسجيل للمضيف المجهول متهماً كل واحد من الحضور بارتكاب جريمة 
                </h3>
            <button type="submit" class="show_more" onclick="subm()">
               <a href="bookpage.aspx">عرض المزيد </a> 
                <i class="fa fa-arrow-right  "></i>
            </button>
          
           
                
            </div>
           
        </div>--%>
<%--<div class="featu">
        <p class="p-text" style="color: #2f2f2f; font-size: 30px; text-align: center;">
            Popular Books
        </p>
        <div class="group-pic">

            <div class="pic-book">
                <input id="0"  type="image" src="../../assets/images/lord.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" >
                <p class="bookname">موت اللورد ادجوير</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
           
                <input id="1"  type="image" src="../../assets/images/none.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">ثم لم يبق أحد</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
            </div>
            <div class="pic-book">
                <input id="2"  type="image" src="../../assets/images/lib.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">جثة في المكتبة</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
                <input id="3"  type="image" src="../../assets/images/train.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">قطار الشرق السريع</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
                <input id="4"  type="image" src="../../assets/images/horse.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">الحصان الأشهب</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
                <input id="5"  type="image" src="../../assets/images/Rogerackroyd.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">مقتل روجر أكرويد</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
                <input id="6"  type="image" src="../../assets/images/mirror.png" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">شرخ في المرآة</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
            <div class="pic-book">
                <input id="7"  type="image" src="../../assets/images/neil.jpg" alt="submit" class="imgIn"  onclick="inputImg(id)" > 
                <p class="bookname">جريمة في وادي النيل</p>
                <p class="author">اجاثا كريستي</p>
                <p class="price">5000 S.P</p>
    
            </div>
        </div>


</div>
        --%>
   
      <asp:GridView ID="bookgrid" style="margin: 20px auto;"  Caption="Books in the web site" CssClass="bookgrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"  AutoGenerateColumns="False" DataKeyNames="Id" OnSelectedIndexChanged="bookgrid_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField>
                </asp:TemplateField>
                <asp:BoundField DataField="Bname" HeaderText="Book Name" />
                <asp:BoundField DataField="Bauthor" HeaderText="Book author" />
                <asp:BoundField DataField="Bdisc" HeaderText="Discription" />
                <asp:TemplateField HeaderText="See Details">
                    <ItemTemplate>
                        <a href='bookpage.aspx?id=<%#DataBinder.Eval(Container.DataItem, "Id") %>'>see more</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>


   

<script src="../../assets/lib/Js/jmain.js"></script>

  

        
        
       

        
  <%--<button ID="Button1"  OnClick="Button1_Click" value="Button"></button>--%>
        

  
    </form>
</body>
</html>