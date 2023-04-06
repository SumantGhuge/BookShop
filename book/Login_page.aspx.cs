using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Configuration;
public partial class Login_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
	//SqlConnection con = new SqlConnection();
       
        
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
		con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         
        
        {
       try
        {
                      
          
           
           
           // object userNameObj = con.ExecuteScalar();
            con.Open();

           


            SqlCommand cmd = new SqlCommand("Log_Table_data", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@UserName", UserName.Text.ToString());
            cmd.Parameters.AddWithValue("@Password", Password.Text.ToString());
         
            cmd.ExecuteNonQuery();
           // int usercount = (Int32)cmd.ExecuteScalar();         // for taking single value

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable usercount = new DataTable();
            da.Fill(usercount);
       
           
           
            // if (Login_page.@UserName == "admin" && Password == "admin")
            // {
           //    Response.Redirect("Data_Details_sql.aspx");
           // }


            if(UserName.Text == "admin" && Password.Text == "admin") // Defalut Login vul
            {
                Response.Redirect("Data_Details_sql.aspx");
            }


           else if (usercount.Rows .Count >0)
            {

                Session["Password"] = Password.Text;


               Response.Redirect("password_chage.aspx");  //for sucsseful login
            }


          
            else
            {
                Label1.Text = "Invalid User Name or word";  //for invalid login
            }
            }
            catch(Exception ex)
            {
                
               // Label1.Text = "Invalid User Name or word";  //for invalid login
			   Label1.Text = ex.Message;
            }
        finally
       {
           con.Close();
       }
        }



    





    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // this.Button2.Attributes.Add("OnClick", "self.close()");
        Response.Redirect("MY HOME.aspx");
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("password_chage.aspx");
    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration_password.aspx");
    }
}
