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

public partial class My_Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {

        try
        {
            SqlConnection con = new SqlConnection();

            con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
            con.Open();
            SqlCommand cmd = new SqlCommand("student_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@enroll_no", txtenroll.Text);
            cmd.Parameters.AddWithValue("@name", Txtname.Text);
            cmd.Parameters.AddWithValue("@course", DpCourse.SelectedValue);
            cmd.Parameters.AddWithValue("@category", Dpcategory.SelectedValue);
            cmd.Parameters.AddWithValue("@coll_name", Txtcollage.Text);
            cmd.Parameters.AddWithValue("@branch", Dpbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@sem", Dpsem.SelectedValue);
            cmd.Parameters.AddWithValue("@mobile_no", Txtmobile.Text);
            cmd.Parameters.AddWithValue("@email_id", Txtemail.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Inserted');</script>");
            HyperLink1.Visible = true;
            con.Close();
            con.Dispose();

            txtenroll.Text = "";
            Txtname.Text = "";
            Txtcollage.Text = "";
            Txtemail.Text = "";
            Txtmobile.Text = "";
        }
        catch (Exception ex)
        {
           
            Response.Write("<script>alert('Record Not Inserted/ Retry');</script>");
        }

        }
}
