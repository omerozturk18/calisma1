using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class arizakayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["durum"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }

    protected void gonder_Click(object sender, EventArgs e)
    {
        string cpu, ram, hdd, anakart, ekrankarti, marka, model, serino,
            garantidurumu, sikayet, teslimeden, arizadurumu, mad, msoyad,eposta, telefon, adres,  tarih;
        int posta;
        cpu = cpu1.Text;
        ram = ram1.Text;
        hdd = hdd1.Text; anakart=anakart1.Text; ekrankarti=ekrankarti1.Text; marka=marka1.Text; model=model1.Text; serino=serino1.Text;
        garantidurumu=garanti1.Text; sikayet=sikayet1.Text; teslimeden=ad1.Text; arizadurumu = "başlangıç"; mad=mad1.Text; msoyad=msoyad1.Text;
         eposta=eposta1.Text; telefon=tel1.Text; adres=adres1.Text+" "+adres2.Text; tarih = "";
        tarih = DateTime.Now.ToString();
        posta = Convert.ToInt32(posta1.Text);

        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["ybsveri123ConnectionString"].ConnectionString);
        SqlCommand komut = new SqlCommand
    ("INSERT INTO ariza(cpu,ram,hdd,anakart,ekrankarti,marka,model,serino,garantidurumu,sikayet,teslimeden,arizadurumu,mad,msoyad,eposta,telefon,adres,posta,tarih) VALUES(@cpu,@ram,@hdd,@anakart,@ekrankarti,@marka,@model,@serino,@garantidurumu,@sikayet,@teslimeden,@arizadurumu,@mad,@msoyad,@eposta,@telefon,@adres,@posta,@tarih)", baglanti);
        komut.Parameters.Add("@cpu", OleDbType.VarChar).Value = cpu;
        komut.Parameters.Add("@ram", OleDbType.VarChar).Value = ram;
        komut.Parameters.Add("@hdd", OleDbType.VarChar).Value = hdd;
        komut.Parameters.Add("@anakart", OleDbType.VarChar).Value = anakart;
        komut.Parameters.Add("@ekrankarti", OleDbType.VarChar).Value = ekrankarti;
        komut.Parameters.Add("@marka", OleDbType.VarChar).Value = marka;
        komut.Parameters.Add("@model", OleDbType.VarChar).Value = model;
        komut.Parameters.Add("@serino", OleDbType.VarChar).Value = serino;
        komut.Parameters.Add("@garantidurumu", OleDbType.VarChar).Value = garantidurumu;
        komut.Parameters.Add("@sikayet", OleDbType.VarChar).Value = sikayet;
        komut.Parameters.Add("@teslimeden", OleDbType.VarChar).Value = teslimeden;
        komut.Parameters.Add("@arizadurum", OleDbType.VarChar).Value = arizadurumu;
        komut.Parameters.Add("@mad", OleDbType.VarChar).Value = mad;
        komut.Parameters.Add("@msoyad", OleDbType.VarChar).Value = msoyad;
        komut.Parameters.Add("@eposta", OleDbType.VarChar).Value = eposta;
        komut.Parameters.Add("@telefon", OleDbType.VarChar).Value = telefon;
        komut.Parameters.Add("@adres", OleDbType.VarChar).Value = adres; 
        komut.Parameters.Add("@posta", OleDbType.Integer).Value = posta;
        komut.Parameters.Add("@tarih", OleDbType.VarChar).Value = tarih;
        baglanti.Open();
        komut.ExecuteNonQuery();
        Label1.Text = "kayıt başarılı";
        CleartextBoxes(this);
        baglanti.Close();
    }

    protected void input_reset_2_Click(object sender, EventArgs e)
    {
        CleartextBoxes(this);
    }



    public void CleartextBoxes(Control parent)
    {

        foreach (Control x in parent.Controls)
        {
            if ((x.GetType() == typeof(TextBox)))
            {
                ((TextBox)(x)).Text = "";
            }

            if (x.HasControls())
            {
                CleartextBoxes(x);
            }
        }
    }
}