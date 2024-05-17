using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string ktgrid = "";
        string silislemi = "";


        void temizle()
        {
            TxtKategoriAd.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                ktgrid = Request.QueryString["Kategoriid"];
                silislemi = Request.QueryString["islem"];
            }


            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Silme İşlemi Kodları
            if (silislemi == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where Kategoriid=@p1", conn.baglanti());
                komutsil.Parameters.AddWithValue("@p1", ktgrid);
                komutsil.ExecuteNonQuery();
                conn.baglanti().Close();
                //Response.Write("<script>alert('Kategori Başarıyla Silinmiştir.')</script>");
            }

            DataList1.Visible = false;
            Panel3.Visible = false;
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
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Kategori Başarılı Bir Şekilde Eklenmiştir.')</script>");
            temizle();
        }
    }
}