using mybookpage.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mybookpage.view
{
    public partial class homepage : System.Web.UI.Page
    {
        Models.Functions Con; int key = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBooks();
            string access = Request.QueryString["access"];
            if (access == "Admin")
                Button2.Visible = true;
        }
        private void ShowBooks()
        {
            string Query = "Select * from BookinsertTb";
            bookgrid.DataSource = Con.GetData(Query);
            bookgrid.DataBind();
        }

        protected void bookgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.key = Convert.ToInt32(bookgrid.SelectedRow.Cells[1].Text);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionStr = ConfigurationManager.ConnectionStrings["BookShopDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionStr))
            {
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                StringBuilder sbCommand = new StringBuilder("Select * from BookinsertTb where 1=1");
                if (searchbar.Value.Trim() != "")
                {
                    sbCommand.Append(" And Bname=@Bname");
                    SqlParameter param = new SqlParameter("@Bname", searchbar.Value);
                    cmd.Parameters.Add(param);
                }
                cmd.CommandText = sbCommand.ToString();
                cmd.CommandType = CommandType.Text;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                bookgrid.DataSource = rdr;
                bookgrid.DataBind();


            }




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}