using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;

public partial class registration_password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text  = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void RegisterUser(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Log_Table(UserName,Password) values(@UserName, @Password)", con);
        cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
        cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        //Displaying Javascript alert Comment Posted Successfully
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Registered/Updated Successfully.');", true);
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text  = "";

                // com.ExecuteNonQuery();
                // con.Close();
                
    }
    
}