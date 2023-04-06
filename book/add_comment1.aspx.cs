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

using System.Collections;
public partial class add_comment1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookcon"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillData();
        }
    }

    //FillData method for filling Repeater Control with Data
    private void fillData()
    {
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";

        con.Open();
        

        DataTable dt = new DataTable();
        SqlDataAdapter adapt = new SqlDataAdapter("Select * from tbl_Comment Order by Id Desc", con);
        adapt.Fill(dt);
        con.Close();
        PagedDataSource pds = new PagedDataSource();
        DataView dv = new DataView(dt);
        pds.DataSource = dv;
        pds.AllowPaging = true;
        pds.PageSize = 4;
        pds.CurrentPageIndex = PageNumber;
        if (pds.PageCount > 1)
        {
            rptPaging.Visible = true;
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < pds.PageCount; i++)
                arraylist.Add((i + 1).ToString());
            rptPaging.DataSource = arraylist;
            rptPaging.DataBind();
        }
        else
        {
            rptPaging.Visible = false;
        }
        Repeater1.DataSource = pds;
        Repeater1.DataBind();
    }



    protected void btn_Submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=PC;database=mydatabase;User ID=mydb;Password=dbismine;";
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_Comment(Name,Email,Comment) values(@name,@email,@comment)", con);
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@comment", txtComment.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        //Displaying Javascript alert Comment Posted Successfully
        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Comment Posted Successfully.');window.location='add_comment1.aspx';", true);
        fillData();
        txtName.Text = "";
        txtEmail.Text = "";
        txtComment.Text = "";
    }

    public int PageNumber
    {
        get
        {
            if (ViewState["PageNumber"] != null)
                return Convert.ToInt32(ViewState["PageNumber"]);
            else
                return 0;
        }
        set
        {
            ViewState["PageNumber"] = value;
        }

    }

    protected void rptPaging_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
        fillData();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}