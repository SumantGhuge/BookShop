using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing.Imaging;
using System.Runtime.InteropServices;

public partial class MY_Master : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

       // con.ConnectionString = @"server=ashish;database=mydatabase;trusted_connection=true;";
       // con.Open();
        Response.Write(Request.Form.Get("UserName"));
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       // if (Login1.UserName == "111" && Login1.Password == "111")
       // {
        //    Response.Redirect("User_Login_Blog.aspx");

       // }
    }
}
