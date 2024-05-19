using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string yrmid = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                yrmid = Request.QueryString["Yorumid"];

                SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", yrmid);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtAdSoyad.Text = dr[0].ToString();
                    TxtMailAdres.Text = dr[1].ToString();
                    Txticerik.Text = dr[2].ToString();
                    TxtYemek.Text = dr[3].ToString();
                }
                conn.baglanti().Close();

            }


        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", Txticerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", yrmid);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Değişiklikler Kaydedildi.')</script>");


        }
    }
}