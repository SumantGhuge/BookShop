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

public partial class My_Search : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Login_session"] != null)
        {
            Label1.Text = "Session Created";
           //// Response.Write( Application["count"] );
            
        }
        else
        {
            Label1.Text = "Session Not Created"; 
            
           /// Response.Write(Application["count"]);

        }

    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
      
    }

    protected void dpc_SelectedIndexChanged(object sender, EventArgs e)
    {
      

    }
   protected void btnshow_Click(object sender, EventArgs e)
   {
       try
       {
		   SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
           con.Open();
           //SqlCommand cmd = new SqlCommand("SELECT     enroll_no, name, course, category, coll_name, branch, sem, mobile_no, email_id FROM  student WHERE (course = @course) AND (sem = @sem) AND (branch = @branch)", con);
           SqlCommand cmd = new SqlCommand("SELECT enroll_no, name, course, category, coll_name, branch, sem, mobile_no, email_id FROM  student WHERE course = @course and sem=@sem and branch=@branch", con);
           //cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.AddWithValue("@course", dpc.SelectedValue);
           cmd.Parameters.AddWithValue("@sem", DropDownList2.SelectedValue);
           cmd.Parameters.AddWithValue("@branch", DropDownList1.SelectedValue);

           SqlDataAdapter adp = new SqlDataAdapter(cmd);
           DataTable otb = new DataTable();
           adp.Fill(otb);
           // if (otb.Rows.Count == 1)
           // {
           //  }
           // string s = otb.Rows[0]["name"].ToString();
           //Response.Write(s.ToString());
           dglist.DataSource = otb;
           dglist.DataBind();

           con.Close();
       }
       catch (Exception)
       {

           Label1.Text = "Invalid User Name or word";  //for invalid login
       }
       finally
       {
           con.Close();
       }
   }
   protected void dglist_SelectedIndexChanged(object sender, EventArgs e)
   {

   }
   protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
   {

   }
   protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
   {

   }
   protected void Button1_Click(object sender, EventArgs e)
   {
       Response.Redirect("add_comment1.aspx");  //for sucsseful login
   }
}
