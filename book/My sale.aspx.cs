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
public partial class My_sale : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnnext_Click(object sender, EventArgs e)
    {
     try
        {

            con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";

            con.Open();


            SqlCommand cmd = new SqlCommand("sale_pur", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@mobile_no", txtmobile.Text);
            cmd.Parameters.AddWithValue("@email_id", Txtemail.Text);

            cmd.Parameters.AddWithValue("@course", DpCourse.SelectedValue);


            cmd.Parameters.AddWithValue("@branch", Dpbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@book_publish", Dpbook_publish.SelectedValue);

            cmd.Parameters.AddWithValue("@sem", Dpsem.SelectedValue);


            cmd.Parameters.AddWithValue("@price", Txtprice.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Inserted/ Enter New');</script>");
            con.Close();
            con.Dispose();
            txtmobile.Text = "";
            Txtprice.Text = "";
            Txtprice.Text = "";
           

        }
        catch (Exception ex)
        {
            con.Close();
            con.Dispose();
            Response.Write("<script>alert('Record Not Inserted/ Retry');</script>");
        }
    }
    protected void Btnok_Click(object sender, EventArgs e)
    {

        try
        {
            con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
            con.Open();


            SqlCommand cmd = new SqlCommand("sale_pur", con);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@mobile_no", txtmobile.Text);
            cmd.Parameters.AddWithValue("@email_id", Txtemail.Text);

            cmd.Parameters.AddWithValue("@course", DpCourse.SelectedValue);


            cmd.Parameters.AddWithValue("@branch", Dpbranch.SelectedValue);
            cmd.Parameters.AddWithValue("@book_publish", Dpbook_publish.SelectedValue);

            cmd.Parameters.AddWithValue("@sem", Dpsem.SelectedValue);


            cmd.Parameters.AddWithValue("@price", Txtprice.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Inserted');</script>");
            con.Close();
            con.Dispose();
            txtmobile.Text = "";
            Txtprice.Text = "";
            Txtprice.Text = "";
           

        }
        catch (Exception ex)
        {
            con.Close();
            con.Dispose();
            Response.Write("<script>alert('Record Not Inserted/ Retry');</script>");

        }

    }
}
