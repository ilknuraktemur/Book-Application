using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class main : System.Web.UI.MasterPage
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            BringAnn();
            object user = Session["username"];
            if (user != null)
            {
                pnlsign.Visible = false;
                pnluser.Visible = true;
                lblusername.Text = user.ToString();
                
            }
            else
            {
                pnlsign.Visible = true;
                pnluser.Visible = false;
            }
        }
        private void BringAnn()
        {
            string query = "select *from announcement order by date desc";
            SqlCommand cmd = new SqlCommand(query, cnn);
            cnn.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            lstann.DataSource = dr;
            lstann.DataBind();

            cnn.Close();
        }

        

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
           
            string query = "Select * From Users Where UserName=@username AND Password=@password";
            SqlCommand cmd = new SqlCommand(query, cnn);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtpsw.Text);

            cnn.Open();
            
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session.Timeout = 300;
                Session.Add("Username",dr["UserName"].ToString());
                Response.Redirect(Request.RawUrl); 
            }
        
            else
            {
                lblres.Text = "User login not succesfull.";
            }
            cnn.Close();





        }

        protected void btnquit_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect(Request.RawUrl);
        }
    }
}