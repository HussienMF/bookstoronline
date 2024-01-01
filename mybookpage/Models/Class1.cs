using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace mybookpage.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private String ConStr;
        public Functions()
        {
            ConStr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\User\Documents\BookShopDB.mdf;Integrated Security=True;Connect Timeout=30";
            Con=new SqlConnection(ConStr);
            cmd=new SqlCommand();
            cmd.Connection=Con;

        }
        public DataTable GetData(String Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConStr);
            sda.Fill(dt);
            return dt;
        }
        public int SetData(String Query)
        {
            int cnt = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;
        }
    }
}
