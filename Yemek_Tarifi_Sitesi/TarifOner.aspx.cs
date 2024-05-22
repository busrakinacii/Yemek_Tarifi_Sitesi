using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void temizle()
        {
            TxtTarifAd.Text = "";
            TxtMalzemeler.Text = "";
            TxtYapilis.Text = "";
            
            TxtTarifOner.Text = "";
            TxtMailAdres.Text = "";


        }
        protected void BtnTarifOner_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler (TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values (@t1,@t2,@t3,@t4,@t5,@t6)", conn.baglanti());
            komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
            komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);
            komut.Parameters.AddWithValue("@t4", "~/Resimler/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@t5",TxtTarifOner.Text);
            komut.Parameters.AddWithValue("@t6", TxtMailAdres.Text);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            //Response.Write("Tarifiniz alınmıştır.");
            Response.Write("<script> alert('Tarifiniz Alınmışır.') </script>");
            temizle();


        }
    }
}