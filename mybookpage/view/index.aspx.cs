using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mybookpage.view
{
    public partial class index : System.Web.UI.Page
    {

        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

        }
        public static string UName = "";
        public static int User;
        protected void Login_Click(object sender, EventArgs e)
        {
            if (UnameTb.Value == "" || passwordTb.Value == "")
            {
                ErrMsg.Text = "Missing Data!!!";

            }
            else if (UnameTb.Value == "Admin@gmail.com" || passwordTb.Value == "Password")
            {
                string Query = "insert into visitorTable values('{0}','{1}')";
                Query = string.Format(Query, UnameTb.Value, passwordTb.Value);
                Con.SetData(Query);

                Response.Redirect("Admin/homepage.aspx?access=Admin");
            }
            else
            {
                //"delete from BookinsertTb where id = {0}";
                if (!CheckBox1.Checked)
                {
                    string Query = "Select * from visitorTable Where visitorname='{0}' and passwordvisitor = '{1}'";
                    Query = string.Format(Query, UnameTb.Value, passwordTb.Value);
                    DataTable dt = Con.GetData(Query);
                    Response.Redirect("Admin/homepage.aspx?access=Visitor");
                }
                else
                {
                    string Query = "insert into visitorTable values('{0}','{1}')";
                    Query = string.Format(Query, UnameTb.Value, passwordTb.Value);
                    Con.SetData(Query);
                    Response.Redirect("Admin/homepage.aspx?access=Visitor");
                }
                //catch
                //{



                //}
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}