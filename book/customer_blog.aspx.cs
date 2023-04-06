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

public partial class customer_blog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);

       con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";

        con.Open();


        if (!IsPostBack)
        {
            this.BindData();
        }
    }

    private void BindData()
    {
        try
        {

        string strConnString = ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString;
        
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                
                string strQuery = "SELECT * FROM customer_blog";
                SqlCommand cmd = new SqlCommand(strQuery);
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                  con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }
        catch (Exception)
        {
            Label1.Text = "Invalid User Name or word"; 
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void Add(object sender, EventArgs e)
    {
        try
        {


            Control control = null;

            if (GridView1.FooterRow != null)
            {
                control = GridView1.FooterRow;
            }
            else
            {
                control = GridView1.Controls[0].Controls[0];
            }
            string customer_id = (control.FindControl("txtcustomer_id") as TextBox).Text;
            string customer_title = (control.FindControl("txtcustomer_title") as TextBox).Text;
            string customer_blog = (control.FindControl("txtcustomer_blog") as TextBox).Text;
            string strConnString = ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO [customer_blog] VALUES(@customer_id, @customer_title, @customer_blog)";
                    cmd.Parameters.AddWithValue("@customer_id", customer_id);
                    cmd.Parameters.AddWithValue("@customer_title", customer_title);
                    //cmd.Parameters.AddWithValue("@customer_blog", customer_blog);
                    // com.Parameters["@Password"].Value = txtNewPassword.Text;
                    cmd.Parameters["@customer_blog"].Value = customer_blog.ToString();




                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        catch (Exception)
        {

            Label1.Text = "Invalid Comment or word";  //for invalid entry
        } 
    }
}
