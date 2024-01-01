using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace mybookpage.Models
{
    public class Books
    {
        public string Bname { get; set; }
        public string Bauthor { get; set; }
        public string Bdisc { get; set; }
        public string BPublisher { get; set; }
        public string BGenre { get; set; }
        public string BBookPrice { get; set; }
        public int Byear { get; set; }
        public int BPageNum { get; set; }
        public int Bid { get; set; }
    }
    public class BooKsAccess
    {
        public static Books GetallBooksFullDetailsById(int Id)
        {
            Books book = new Books();
            string CS = ConfigurationManager.ConnectionStrings["BookShopDBConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from BookinsertTb where Id = @Id", con);
                SqlParameter parameter = new SqlParameter();
                parameter.ParameterName = "@Id";
                parameter.Value = Id;
                cmd.Parameters.Add(parameter);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    book.Bid = Convert.ToInt32(rdr["Id"]);
                    book.Bname = rdr["Bname"].ToString();
                    book.Bauthor = rdr["Bauthor"].ToString();
                    book.Bdisc = rdr["Bdisc"].ToString();
                    book.BPageNum = Convert.ToInt32(rdr["BPageNum"]);
                    book.BPublisher = rdr["BPublisher"].ToString();
                    book.Byear = Convert.ToInt32(rdr["Byear"]);
                    book.BBookPrice = rdr["BBookPrice"].ToString();
                    book.BGenre = rdr["BGenre"].ToString();
                }
                return book;
            }
        }
    }
}