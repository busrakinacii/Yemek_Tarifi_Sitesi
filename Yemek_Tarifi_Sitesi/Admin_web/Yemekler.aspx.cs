using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.WebSockets;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class Yemekler : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();

        string id = "";
        string Yemeksil = "";
        void temizle()
        {
            TxtYemekAd.Text = "";
            TxtMalzemeler.Text = "";
            TxtYemekTarifi.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                Yemeksil = Request.QueryString["Yemeksil"];
                id = Request.QueryString["Yemekid"];
            }


            DataList1.Visible = false;
            Panel3.Visible = false;


            // Yemek Listesi 

            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Yemek Silme
            if (Yemeksil == "sil")
            {
                SqlCommand komut3 = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1", conn.baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                conn.baglanti().Close();
                Response.Write("<script>alert('İşleminiz Başarıyla Silinmiştir')</script>");

            }


            //KATEGORİ LİSTESİ DROPDOWNLİST
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", conn.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

            }


        }

        protected void Btn_Ac_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Btn_Kapat_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }

        protected void Btn_Ac0_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Btn_Kapat0_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            //Yemek Ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtYemekTarifi.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Yemek Tarifiniz Başarılı Bir Şekilde Kayıt Edilmiştir.')</script>");
            temizle();

            //Kategori Sayısını Arttırma

            SqlCommand komut3 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where Kategoriid=@p1", conn.baglanti());
            komut3.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut3.ExecuteNonQuery();
            conn.baglanti().Close();

            ////Kategori Sayısını azaltma
            //SqlCommand komut4 = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where Kategoriid=@p1", conn.baglanti());
            //komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            //komut4.ExecuteNonQuery();
            //conn.baglanti().Close();


        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}