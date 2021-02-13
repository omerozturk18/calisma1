using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["durum"] != null)
        {
            Response.Redirect("index.aspx");
        }
       
    }

    protected void giris_Click(object sender, EventArgs e)
    {

        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["ybsveri123ConnectionString"].ConnectionString);
        SqlCommand komut = new SqlCommand("select * from musteri where eposta='"+TextBox7.Text+"' and sifre='"+TextBox8.Text+"'", baglanti);
        SqlDataReader dr;
        baglanti.Open();
        dr = komut.ExecuteReader(); 

       
        bool bas = false;
        while (dr.Read())
        {
   
            bas = true;
            if (bas == true)
            {
                
                Response.Cookies["durum"].Value = dr[3].ToString();
                Response.Cookies["admin"].Value = dr[5].ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Cookies["durum"].Value = "0";
               
            }
        } Label1.Text = "Hatalı Giriş";
 baglanti.Close();
    }
}