using System;
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

public partial class Data_Details_sql : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Application["count"]);
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
         try
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection();

            con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";

            {
                con.Open();
             SqlCommand cmd = new SqlCommand("select mobile_no,email_id,sem,course,branch from sale_purchase where Branch = ' + txtSearch.Text + '", con);
             //   SqlCommand cmd = new SqlCommand("select mobile_no,email_id,sem,course,branch from sale_purchase where branch = @branch", con);
             //   SqlCommand cmd = new SqlCommand("select mobile_no,email_id,sem,course,branch from sale_purchase where branch = " + txtSearch.Text + " or branch = @branch ", con);

                cmd.Parameters.AddWithValue("@branch", txtSearch.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
                gvDetails.DataSource = dt;
                gvDetails.DataBind();

            }
        }

        catch (Exception  )
         {
            
                 DataTable dt = new DataTable();

                 SqlCommand cmd = new SqlCommand("select mobile_no,email_id,sem,course,branch from sale_purchase where branch = @branch ", con);

                 cmd.Parameters.AddWithValue("@branch", txtSearch.Text);
                 SqlDataAdapter da = new SqlDataAdapter(cmd);
                 da.Fill(dt);
                 con.Close();
                 gvDetails.DataSource = dt;
                 gvDetails.DataBind();
                 
                 Response.Write("<script>alert('Retry');</script>");  //for invalid login
                 txtSearch.Text = "";

             
         }
        finally
        {
            con.Close();
        }
    }
}