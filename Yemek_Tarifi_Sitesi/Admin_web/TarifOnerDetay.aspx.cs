using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string trfid = "";
      
        protected void Page_Load(object sender, EventArgs e)
        {
            trfid = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where Tarifid=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", trfid);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtTarifAd.Text = dr[1].ToString();
                    TxtTarifMalzeme.Text = dr[2].ToString();
                    TxtYapilis.Text = dr[3].ToString();
                   // DropDownList1.Text = dr[4].ToString();
                    TxtTarifOneren.Text = dr[5].ToString();
                    TxtOnerenMail.Text = dr[6].ToString();
                }
                conn.baglanti().Close();


                // Drop DownList Kategorileri Çekme

                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }

        protected void BtnOnayla_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme

            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", trfid);
            komut.ExecuteReader();
            conn.baglanti().Close();
            Response.Write("<script>alert('Tarif Onaylanmıştır.')</script>");


            //Yemeği Yemekler Kısmına Ekleme

            SqlCommand komut2 = new SqlCommand("Insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut2.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
            komut2.Parameters.AddWithValue("@p2",TxtTarifMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3",TxtYapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            conn.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", conn.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            conn.baglanti().Close();



        }
    }
}