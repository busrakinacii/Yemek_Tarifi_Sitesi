using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = false;

            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }

        protected void Btn_Ac_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Btn_Kapat_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }
    }
}