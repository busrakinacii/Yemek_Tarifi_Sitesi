using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string kategoriid = "";
        void temizle()
        {
            TxtKategoriAd.Text = "";
            TxtAdet.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            kategoriid = Request.QueryString["Kategoriid"];

            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where Kategoriid=@p1", conn.baglanti());
                komut.Parameters.AddWithValue("@p1", kategoriid);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtKategoriAd.Text = dr[1].ToString();
                    TxtAdet.Text = dr[2].ToString();
                }
                conn.baglanti().Close();
            }
           

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));

            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAd=@p1,KategoriAdet=@p2,KategoriResim=@p3 where Kategoriid=@p4", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtAdet.Text);
            komut.Parameters.AddWithValue("@p3", "~/Resimler/" + FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p4", kategoriid);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Kategori Başarılı Bir Şekilde Güncellenmiştir.')</script>");
            temizle();
        }
    }
}