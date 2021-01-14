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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlcase.Visible = false;
        }

        protected void btnsign_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtpsw.Text != "" && txtFname.Text != "" && txtLname.Text!="" && txtEposta.Text!="")
            {
                SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings[0].ConnectionString);
                string query = "insert into users (username,password,firstname,lastname,eposta) values(@username,@password,@firstname,@lastname,@eposta)";
                SqlCommand cmd = new SqlCommand(query, cnn);
                cnn.Open();
                try
                {
                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password", txtpsw.Text);
                    cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                    cmd.Parameters.AddWithValue("@lastname", txtLname.Text);
                    cmd.Parameters.AddWithValue("@eposta", txtEposta.Text);
                   
                    cmd.ExecuteNonQuery();
                    cnn.Close();
                   
                    pnlsignup.Visible = false;
                    pnlcase.Visible = true;

                    Session.Add("username", txtUsername.Text);
                    
                    lblcase.Text = "You have successfully registered and logged in.";
                }
                catch(Exception)
                {
                    lblres.Text = "An error has occurred.";
                }
            }
            else
            {
                lblres.Text = "Please fill in empty fields";

            }
        }
    }
}