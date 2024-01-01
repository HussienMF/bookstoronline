using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace mybookpage.view.Admin
{
    public partial class AdminPage : System.Web.UI.Page
    {
        Models.Functions Con; int key = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBooks();
            //////////if (!this.IsPostBack)
            //////////{
            //////////    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //////////    using (SqlConnection conn = new SqlConnection(constr))
            //////////    {
            //////////        using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Files", conn))
            //////////        {
            //////////            DataTable dt = new DataTable();
            //////////            sda.Fill(dt);
            //////////            gvImages.DataSource = dt;
            //////////            gvImages.DataBind();
            //////////        }
            //////////    }
            //////////}
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
            Query = string.Format(Query, Bname, Bauthor,Bdisc, BPublisher, BPublishyear, BPageNumbers, BBookGenre, BBookPrice);
            Con.SetData(Query);
            ShowBooks();
        }

        protected void allbookgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.key = Convert.ToInt32(allbookgrid.SelectedRow.Cells[1].Text);
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string i = allbookgrid.SelectedRow.Cells[1].Text;
            string Query = "delete from BookinsertTb where id = {0}";
            Query = string.Format(Query, allbookgrid.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowBooks();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\User\Documents\BookShopDB.mdf;Integrated Security=True;Connect Timeout=30");
            ////FileUpload1.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(FileUpload1.FileName));
            //string link="img/" + Path.GetFileName(FileUpload1.FileName);
            //string query = "insert into imgTable(image) values(" + link + ")";
            //SqlCommand cmd = new SqlCommand(query, sqlcon);
            //sqlcon.Open();
            //cmd.ExecuteNonQuery();
            //sqlcon.Close();
            //Label1.Text = "saved";



            ////Extract Image File Name.
            //string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

            ////Set the Image File Path.
            //string filePath = "~/Uploads/" + fileName;

            ////Save the Image File in Folder.
            //FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath));

            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            //using (SqlConnection conn = new SqlConnection(constr))
            //{
            //    string sql = "INSERT INTO imgTble VALUES(@Name, @Path)";
            //    using (SqlCommand cmd = new SqlCommand(sql, conn))
            //    {
            //        cmd.Parameters.AddWithValue("@Name", fileName);
            //        cmd.Parameters.AddWithValue("@Path", filePath);
            //        conn.Open();
            //        cmd.ExecuteNonQuery();
            //        conn.Close();
            //    }
            //}

            //Response.Redirect(Request.Url.AbsoluteUri);





            //if (FileUpload1.HasFile)
            //    FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath + "image/" + FileUpload1.FileName);
            //path = FileUpload1.FileName;
            //SqlCommand cmd = new SqlCommand("insert into imgTable values('" + path + "')", conn);
            //cmd.ExecuteNonQuery();
            //conn.Close();
        }
    }
}