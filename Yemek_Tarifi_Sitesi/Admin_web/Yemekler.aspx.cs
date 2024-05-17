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
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            Panel3.Visible = false;

            // Yemek Listesi 

            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

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
            SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
            komut.Parameters.AddWithValue("@p3", TxtYemekTarifi.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            conn.baglanti();
            Response.Write("<script>alert('Yemek Tarifiniz Başarılı Bir Şekilde Kayıt Edilmiştir.')</script>");
        }
    }
}