<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookpage.aspx.cs" Inherits="mybookpage.view.bookpage" %>


<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="../../assets/lib/css/detail.css">
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
  
        <div class="contain">
            <img src="img/none.jpg" alt="not downloaded" id="book-img">
        &nbsp;
            <div class="detail-book">
                <h2 style=" text-align: left;" id="bookname" runat="server">
                    Book name:
                    <asp:Label ID="BN" runat="server" style=" text-align: left;" CssClass="BN" Text="Label"></asp:Label>

                </h2>
                <h3 style="color: rgb(25, 25, 92); text-align: left;" id="writer" runat="server"> 
                    Author name:
                    <asp:Label ID="BA" runat="server" CssClass="BA" Text="Label"></asp:Label>
                </h3>
         
                <h3 style=" text-align: left;">Discription:</h3>
                <h4 style=" text-align: left;" id="bookdescription" runat="server">
                    
                    <asp:Label ID="disc" runat="server" Text="Label"></asp:Label>
                    
   
            
                </h4>

                
                <div class="book-info" id="info">
                    <u><p style=" text-align: left;font-weight: bold;">Book Detail:</p></u>
                    
                    <p style=" text-align: left;font-weight: bold;" id="publisher"> Publisher:</p>
                    <asp:Label ID="Pub" runat="server" Text="Label"></asp:Label>
                 
                    <p style=" text-align: left;font-weight: bold;" id="date"> Publish Year:</p>
                    <asp:Label ID="year" runat="server" Text="Label"></asp:Label>

                    <p style=" text-align: left;font-weight: bold;" id="page-num">Page numbers:</p>
                    <asp:Label ID="numpage" runat="server" Text="Label"></asp:Label>

                   <p style=" text-align: left;font-weight: bold;" id="page-num">Book Genre:</p>
                    <asp:Label ID="BGenre" runat="server" Text="Label"></asp:Label>

                    
                    <p style=" text-align: left;font-weight: bold;" id="price">Price:</p>
                        <asp:Label ID="price" runat="server" Text="Label"></asp:Label>
               
                    
                    <div class="fav-button" runat="server">
         
   
                    <asp:Button ID="addbook" class="add" runat="server" OnClick="Button1_Click" Text="Add to my favorite books List" />
                    </div>
                </div>

            
                
            </div>

   
            </div>
                  <div class="grid-con">
         
                <asp:GridView ID="GridView1" runat="server" class="table" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
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
                <asp:Button Id="DelbuttonId" class="Delbutton" runat="server" OnClick="Button1_Click1" Text="Delete selected Book" EnableTheming="True" Visible="False" />
         </div>
         </form>
      

    </body>
    <script>
        //let des = document.getElementById('bookdescription');
        //let bookname = document.getElementById('bookname');
        //let bookimg = document.getElementById('book-img');
        //let publish = document.getElementById('publish');

        //let datepub = document.getElementById('date');
        //let pagenum = document.getElementById('page-num');
        //let genr = document.getElementById('genre');
        //let price = document.getElementById('price');
        //let writerbook = document.getElementById('writer');



        //let i = parseInt(window.localStorage.getItem('index'));

        //let names = ['موت اللورد ادجوير', 'ثم لم يبق أحد', 'جثة في المكتبة', 'قطار الشرق السريع', 'الحصان الأشهب', 'مقتل روجر أكرويد', 'شرخ في المرآة', 'جريمة في وادي النيل'];
        //let publishBooks = [' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر', ' الناشر: الأجيال للطباعة والنشر'];
        //let datespublish = ['تاريخ النشر: 1993', 'تاريخ النشر: 1996', 'تاريخ النشر: 1980', 'تاريخ النشر: 1990', 'تاريخ النشر: 1985', 'تاريخ النشر: 1987', 'تاريخ النشر: 1992', 'تاريخ النشر: 1994'];
        //let pagenumbers = ['عدد الصفحات: 450', 'عدد الصفحات: 500', 'عدد الصفحات: 400', 'عدد الصفحات: 545', 'عدد الصفحات: 520', 'عدد الصفحات: 502', 'عدد الصفحات: 495', 'عدد الصفحات: 580'];
        //let bookgenre = ['نوع الكتاب: غموض-جريمة-تشويق', 'نوع الكتاب: غموض-جريمة', 'نوع الكتاب: جريمة', 'نوع الكتاب: غموض', 'نوع الكتاب: تشويق-جريمة', 'نوع الكتاب: غموض-تشويق', 'نوع الكتاب: غموض-جريمة', 'نوع الكتاب: غموض-جريمة'];
        //let bookprice = [' السعر: 8000 ل.س', ' السعر: 5000 ل.س', ' السعر: 10000 ل.س', ' السعر: 5000 ل.س', ' السعر: 9000 ل.س', ' السعر: 12000 ل.س', ' السعر: 7000 ل.س', ' السعر: 15000 ل.س'];
        //let writers = ['Agatha christy', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)', 'اجاثا كريستي (الكاتب)'];
        //let dexcriptinsbook = [' . تطلب ممثلة أمريكية متزوجة من اللورد إدجوير من بوارو مساعدتها لتتطلق من زوجها. يوافق بوارو على مساعدتها، ويقابل زوجها. تظهر الممثلة في ذلك المساء في عشاء مع ثلاثة عشر ضيفًا، وهناك خرافة حول ذلك الأمر. يُعثَر في اليوم التالي على اللورد إدجوير وممثلة أمريكية أخرى مقتولين، كلٌ في منزله. يحقق بوارو في ذلك.',
        //                        'عشرة أشخاص لا يجمعهم أي قاسم مشترك ولا انسجام بينهم اجتذبتهم دعوة غامضة إلى جزيرة مقفرة معزولة.                    وفجأة خلال تناول العشاء دوى تسجيل للمضيف المجهول متهماً كل واحد من الحضور بارتكاب جريمة ...ولا يلبث  أحد المدعوين أن يسقط ميتاً. التوتر يتعاظم حينما يلاحظ المدعوون أن القاتل ليس إلا واحداً منهم وأنه جاهز للضرب من جديد.   إنهم يتناقصون واحداً بعد واحد,ثم... لم يبق أحد.   ',
        //                        'كانت السيدة بانتري مستغرقة في أحلام اليقظة كعادتها كلما نهضت من النوم صباحاً، حيث سمعت فجأة أصواتاً غير مألوفة في جوانب القصر الكبير، ووقع أقدام سريعة، لا عهد لها بها، ثم طرقاً سريعاً على باب مخدعها، وصوت خادمتها تقول في فزع "سيدتي، توجد جثة في غرفة المكتبة!!"  ولم تنتظر الخادمة رد السيدة وإنما خرجت مندفعة إلى الخارج على عجل لتنضم إلى باقي الخدم الذين كانوا يقفون على باب غرفة المكتبة حيث حضر صاحب المنزل الكولونيل "بانتري ليرى ماذا حدث. كل شيء كان في مكانة في الغرفة القديمة الكبيرة، غير أن شيئاً واحداً كان دخيلاً على الغرفة هو الجثة. فمن هي صاحبتها؟ ولماذا وضعت في غرفة المكتبة في هذا القصر الرحب؟ وأولاً وأخيراً من هو الفاعل؟ ولماذا؟',
        //                        'تحكى هذه الرواية جريمة وقعت في قطار ” طوروس السريع ” كما يسمونة هذا القطار الذى يتكون من عربة مطعم ومطبخ وعربة نوم وعربتين أخريين . والذى يربط بين لندن وتركيا مروراً ،إذ يتم العثور على جثة أحد الركاب داخل مقصورتة الخاصة به ، وقد تلقى هذا القتيل اثنتا عشرة طعنة ، والغريب أن باب مقصورتة كان مغلق من الداخل مما يثير الأمر حيرة ، وهنا وفي هذا الوقت يظهر المحقق بوارو لكى يعمل على هذه الجريمة المستحيلة اذا أن وجوده كان بمحض المصادفة لركوبه هذا القطار ',
        //                        'ضحايا "" ماتوا بإرادتهم الحرة... لا بل لقد نُميت بذور الضعف الجسدي الموجودة فيهم بواسطة ما يسمى بالوسائل السيكولوجية حيث يتم تحفيز "رغبة الموت" الموجودة لدى كل شخص مما يدفعه إلى الانتحار بملء رغبته ودون أي دوافع أخرى خارجية،ولكن ما هو الدافع من وراء استغلال نقاط ضعف النفس البشرية بأبشع صورها؟ومن هي المنظمة التي تتخذ من منزل مقراً لها؟وما هي الخدع التي استعملتها للوصول إلى المال والسلطة دونما مبالات لحياة الإنسان؟ ',
        //                        'تبدأ أحداث الرواية بوفاة السيدة فيرارز، وهي أرملة ثرية، انتحاراً، بسبب الابتزاز الذي يُمارسه ضدها شخص يعرف بأنها قتلت زوجها، وقبل أنتحارها تُرسل رسالة لروجر أكرويد الذي كان قد تقدم لخطبتها؛ تخبره فيها باسم الشخص الذي كان يبتزها.  يُقتل روجر أكرويد ليلة وصول الرسالة، وتدور الشبهات بين جميع المحيطين به، لكن المشتبه به الرئيسي في القضية هو ابنه بالتبني رالف باتون الذي تشير جميع الأدلة إليه.     يكون المحقق البلجيكي هيركيول بوارو الشهير قد تقاعد من عمله واستقر في كنغز أبوت لزراعة الكوسا (يصبح جار الدكتور شبارد)، فتلجأ إليه فلورا أكرويد ليبرئ ساحة رالف باتون المختفي، ويمضي بوارو للعمل على مهمته، فيتخذ شبارد ( مُساعداً له في القضية    يُواجه بوارو بقضية يُخفي فيها الجميع أسراراً،غير أنه يتوصل في النهاية إلى القاتل الحقيقي، الذي كان سبب شهرة الرواية ، ففي الفصلين الأخيرين منها، يكشف بوارو أن القاتل هو الشخص الذي كان دوماً فوق مستوى الشبهات...',
        //                        'تُحقق الآنسة ماربل في مقتل هيذر بيدكوك بشراب مسمم في حفلة محلية، ويُعتقد أن المقصد الأساسي لعملية التسميم كان مُضيفة الحفلة الممثلة الأمريكية الشهيرة مارينا غريغ. وبينما تحقق الآنسة ماربل في القضية، تكتشف أسراراً مُظلمة تتعلق بماضي مارينا، وتتعقد خيوط الجريمة بازدياد عدد الضحايا.',
        //                        'الشابة الثرية والجميلة لينيت ريدجواي تقوم بخيانة أعز صديقاتها جاكلين بالفور مع خطيبها سيمون دويلي، ثم ما تلبث أن تتزوج به. العروسان يقرران قضاء شهر العسل، لكن أينما ذهبا تتبعهما المرأة المحطمة القلب جاكلين بالفور، إلى أن يصلا إلى مصر، أين يقيمان في فندق يوجد به المحقق هيركيول بوارو. يستقل بوارو والزوجان الجديدان وملاحقتهما-جاكلين- وعدد من الركاب الآخرين قاطرة بخارية للقيام بجولة في نهر النيل، لكن في إحدى الأيام يتم إيجاد لينيت مقتولة. كل أصابع الاتهام تتجه نحو جاكلين التي تكن حقدا كبيرا لها. لكن "الخلايا الرمادية الصغيرة" لبوارو غير مقنعة بهذا ويقرر التحقيق في القضية لاكتشاف خفاياها'];

        //موت اللورد ادجوير
        //الأجيال للطباعة والنشر
        //غموض-جريمة
        //يوافق بوارو على مساعدتها، ويقابل زوجها. تظهر الممثلة في ذلك المساء في عشاء مع ثلاثة عشر ضيفًا، وهناك خرافة حول ذلك الأمر. يُعثَر في اليوم التالي على اللورد إدجوير وممثلة أمريكية أخرى مقتولين، كلٌ في منزله. يحقق بوارو في ذلك
        //let photos = ['../../assets/images/lord.jpg', '../../assets/images/none.jpg', '../../assets/images/lib.jpg', '../../assets/images/train.jpg', '../../assets/images/horse.jpg', '../../assets/images/Rogerackroyd.jpg', '../../assets/images/mirror.png', '../../assets/images/neil.jpg'];
        //bookname.innerHTML = names[i];
        //bookimg.src = photos[i];
        //publish.innerHTML = publishBooks[i];
        //datepub.innerHTML = datespublish[i];
        //pagenum.innerHTML = pagenumbers[i];
        //genr.innerHTML = bookgenre[i];
        //price.innerHTML = bookprice[i];
        //writerbook.innerHTML = writers[i];
        //des.innerHTML = dexcriptinsbook[i];


    </script>
    <%--<script runat="server" src="~/assets/lib/Js/favList.js">


    </script>--%>

</html>
                        
   