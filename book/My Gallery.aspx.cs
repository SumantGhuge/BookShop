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

public partial class My_Gallery : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
      

        

        getall();
        //GridView1.Visible = false;
    }
    protected void btnupload_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
        cn.Open();
        string s;
        s = fup.FileName;
        fup.PostedFile.SaveAs(Server.MapPath("MY IMAGES\\" + s));
        SqlCommand cmd = new SqlCommand("album_insert", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", txtname.Text);

        cmd.Parameters.AddWithValue("@image", "MY IMAGES\\" + s);

        cmd.ExecuteNonQuery();
        Response.Write("Image Uploaded Successfully!!");
        cn.Close();
        getall();
        txtname.Text = "";
    }
    void getall()
    {
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
        cn.Open();
        SqlCommand cmd = new SqlCommand("getall", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter oad = new SqlDataAdapter();
        oad.SelectCommand = cmd;
        DataSet ost = new DataSet();
        oad.Fill(ost);
        dst.DataSource = ost.Tables[0];
        dst.DataBind();
        cn.Close();

    }
    protected void dst_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
