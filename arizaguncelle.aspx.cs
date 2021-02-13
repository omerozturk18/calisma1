using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class arizaguncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["admin"].Value != "admin")
        {
            Response.Redirect("index.aspx");
        }
      Label1.Text = Request.QueryString["urunid"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["ybsveri123ConnectionString"].ConnectionString);
        baglanti.Open();
        SqlCommand komut = new SqlCommand("update ariza set arizadurumu=@arizadurumu where  serino=@serino ",baglanti);
        
        komut.Parameters.AddWithValue("@arizadurumu", DropDownList1.Text);
        komut.Parameters.AddWithValue("@serino", Request.QueryString["urunid"]);
        komut.ExecuteNonQuery();
        baglanti.Close();
        Response.Redirect("arizatakip.aspx");
    }
}