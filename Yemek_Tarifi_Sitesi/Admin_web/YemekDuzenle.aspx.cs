using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string ymkid = "";

        void temizle()
        {
            TxtYemekAd.Text = "";
            TxtYemekTarif.Text = "";
            TxtMalzemeler.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ymkid = Request.QueryString["Yemekid"];//Sorgu Dizesi isteği
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where Yemekid=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", ymkid);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtYemekAd.Text = dr[1].ToString();
                    TxtMalzemeler.Text = dr[2].ToString();
                    TxtYemekTarif.Text = dr[3].ToString();
                    DropDownList1.Text = dr[7].ToString();
                }
                conn.baglanti().Close();



                //Kategorilerin DropDownListe Çekilmesi
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
          
           
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtYemekTarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", ymkid);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Güncellenme İşlemi Başarılı Bir Şekilde Gerçekleşmiştir.')</script>");
            temizle();
        }
    }
}