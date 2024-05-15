using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        void temizle()
        {
            TxtAdSoyad.Text = "";
            TxtMailAdres.Text = "";
            TxtMesaj.Text = "";
            TxtKonu.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (MesajGonderen,MesajBaslik,MesajMail,Mesajicerik) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtKonu.Text);
            komut.Parameters.AddWithValue("@p3", TxtMailAdres.Text);
            komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Mesajınız Başarı Bir Şekilde Alınmıştır.')</script>");
            temizle();

        }
    }
}