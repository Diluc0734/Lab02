using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlLoaibanh.Items.Add(new ListItem("Bánh mì PewPew", "01"));
                ddlLoaibanh.Items.Add(new ListItem("Bơ Bán Bò", "02"));
                ddlLoaibanh.Items.Add(new ListItem("Sà Bì Chưởng", "03"));
                ddlLoaibanh.Items.Add(new ListItem("Mixi Food", "04"));
                ddlLoaibanh.Items.Add(new ListItem("Haky Food", "05"));
            }
        }

        protected void btnSL_Click(object sender, EventArgs e)
        {
            string data = $"{ddlLoaibanh.SelectedItem.Text} ({txtSL.Text})";
            lbBDD.Items.Add(data);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            for (int i = lbBDD.Items.Count - 1; i >= 0; i--)
            {
                if (lbBDD.Items[i].Selected)
                {
                    lbBDD.Items.RemoveAt(i);
                }
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "";
            //b1.thu thap thong tin
            kq += "<h2 class='text-center'> HOÁ ĐƠN ĐẶT HÀNG </h2>";
            kq += "<div class='border border-primary p-2'>";
            kq += "Khách hàng: <i>" + txtTenKH.Text + "</i><br>";
            kq += "Địa chỉ: <i>" + txtDiaChi.Text + "</i><br>";
            kq += "Mã số thuế: <i>" + txtMST.Text + "</i><br><br>";

            kq += "<b>Đặt các loại món sau:</b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(', ')' };
            foreach (ListItem item in lbBDD.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td> {arr[0]} </td> <td> {arr[1]} </td>";
                kq += "</tr>";
            }

            kq += "</table>";
            kq += "</div>";

            //b2.gui thong tin ve client
            lbKetQua.Text = kq;
        }
    }
}