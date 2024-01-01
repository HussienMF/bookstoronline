using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mybookpage.view.Admin
{
    public partial class insertbook : System.Web.UI.Page
    {

        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBooks();

        }
        private void ShowBooks()
        {
            string Query = "Select * from BookinsertTb";
            allbookgrid.DataSource = Con.GetData(Query);
            allbookgrid.DataBind();
        }
        protected void Addbook_Click(object sender, EventArgs e)
        {
            string Bname = BookName.Value;
            string Bdisc = BookDescription.Value;
            string Bauthor = BookWriter.Value;
            string BPublisher = BookPublisher.Value;

            int BPublishyear = Convert.ToInt32(BookPublishyear.Value);
            int BPageNumbers = Convert.ToInt32(PageNumbers.Value);

            string BBookGenre = BookGenre.Value;
            string BBookPrice = BookPrice.Value;


            string Query = "insert into BookinsertTb values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')";
            Query = string.Format(Query, Bname, Bdisc, Bauthor, BPublisher, BPublishyear, BPageNumbers, BBookGenre, BBookPrice);
            Con.SetData(Query);
            ShowBooks();
        }

        protected void allbookgrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}