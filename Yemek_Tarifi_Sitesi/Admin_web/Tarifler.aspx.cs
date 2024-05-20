using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class Tarifler : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            DataList2.Visible = false;

            //Onaysız Tarif Listesi
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=0", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Onaylı Tarif Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Tarifler where TarifDurum=1", conn.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Btn_Ac_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Btn_Kapat_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataList2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataList2.Visible = false;
        }
    }
}