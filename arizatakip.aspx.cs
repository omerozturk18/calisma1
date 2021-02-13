using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class arizatakip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["durum"] == null)
        {
            Response.Redirect("login2.aspx");
        }
        if (Request.Cookies["admin"].Value != "admin")
        {
            Button2.Visible = false;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("arizaguncelle.aspx?urunid="+TextBox1.Text);
        Session.Clear();
        //Session.Add("urunid",TextBox1.Text);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}