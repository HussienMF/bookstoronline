using mybookpage.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mybookpage.view
{
    public partial class bookpage : System.Web.UI.Page
    {
        Models.Functions Con; int key = 0;
        int indexselectedbox;
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["Id"];
            
            int bookid = Convert.ToInt32(id);
            indexselectedbox = bookid;
            List<Books> booklist = new List<Books>()
                { BooKsAccess.GetallBooksFullDetailsById(bookid)

                };
 
            //DetailsView1.DataSource = booklist;

            //DetailsView1.DataBind();
            Con = new Models.Functions();
            ShowBooks();
            BN.Text = booklist[0].Bname;
            BA.Text = booklist[0].Bauthor;
            disc.Text = booklist[0].Bdisc;
            Pub.Text = booklist[0].BPublisher;
            year.Text = booklist[0].Byear.ToString();
            numpage.Text = booklist[0].BPageNum.ToString();
            BGenre.Text = booklist[0].BGenre;
            price.Text = booklist[0].BBookPrice;
            //string a = booklist[0].Bauthor;
        }
        private void ShowBooks()
        {
            string Query = "Select * from favoriteTble";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = this.indexselectedbox;
            List<Books> booklist = new List<Books>()
                { BooKsAccess.GetallBooksFullDetailsById(i)

                };
            BN.Text = booklist[0].Bname;
            BA.Text = booklist[0].Bauthor;
            disc.Text = booklist[0].Bdisc;
            Pub.Text = booklist[0].BPublisher;
            year.Text = booklist[0].Byear.ToString();
            numpage.Text = booklist[0].BPageNum.ToString();
            BGenre.Text = booklist[0].BGenre;
            price.Text = booklist[0].BBookPrice;
           //1:54
            //string Bname = bookname.InnerHtml;
            //string Bdisc = bookdescription.InnerHtml;
            //string Bauthor = writer.InnerHtml;

            string Query = "insert into favoriteTble values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
            Query = string.Format(Query, booklist[0].Bname, booklist[0].Bauthor, booklist[0].Bdisc, booklist[0].BPublisher, booklist[0].Byear, booklist[0].BPageNum, booklist[0].BGenre, booklist[0].BBookPrice, booklist[0].Bid);
            Con.SetData(Query);
            ShowBooks();
            //DelbuttonId.Visible = true;
        }
       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.key = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            DelbuttonId.Visible = true;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {


            string Query = "delete from favoriteTble where id = {0}";
            Query = string.Format(Query, GridView1.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowBooks();
            
        }
    }
}