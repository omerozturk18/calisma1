using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void uyeol_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["ybsveri123ConnectionString"].ConnectionString);

        SqlCommand komut = new SqlCommand
("INSERT INTO musteri(ad,soyad,eposta,sifre) VALUES('" +TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')", baglanti);
    
        baglanti.Open();
        komut.ExecuteNonQuery();
        Label1.Text = "kayıt başarılı";
        baglanti.Close();
    }

}