using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class literature : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            BringBooks();
        }
        private void BringBooks()
        {
            string query = "select *from book inner join bookwriter on book.bwriterID=bookwriter.bwriterID";
            SqlCommand cmd = new SqlCommand(query, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            lstbook.DataSource = dr;
            lstbook.DataBind();
            
            

            cnn.Close();
        }

        protected void BtnRate_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
    }

