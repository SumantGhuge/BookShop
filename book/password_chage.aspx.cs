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

public partial class raw : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
    string str = null;
    SqlCommand com;
    byte up;
    
    protected void Page_Load(object sender, EventArgs e)
    {

       // Response.Cache.SetNoStore();
        
        txtOLDPassword.Text = (string)(Session["Password"]);

    }

 
    protected void Button1_Click(object sender, EventArgs e)
    {

       try
       {
            
            con.Open();
            str = "select * from Log_Table ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (txtOLDPassword.Text == reader["Password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update Log_Table set Password=@Password where Password='" + txtOLDPassword.Text + "'";

                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
                com.Parameters["@Password"].Value = txtNewPassword.Text;
                lblError.Text = "Password Change";
                com.ExecuteNonQuery();
                // con.Close();
                Response.Write("<script>Password Change('Retry');</script>"); 
            }
            else
            {
                Response.Write("<script>Password Not Change('Retry');</script>"); 
            }
      }
       catch { }
      finally { con.Close(); }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session.Clear();
        
       // FormsAuthentication.SignOut();
        // Session["Password"].Abondon();
        Response.Redirect("Login_page.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["Login_session"] = txtOLDPassword.Text;

        Response.Redirect("My Search.aspx");
    }
}
