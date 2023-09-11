using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string myUrl = DropDownList1.SelectedItem.Value;
            Image1.ImageUrl = $"~/Content/imgs/{myUrl}";
            CarDet.InnerText = DropDownList1.SelectedItem.Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int OptsPrice = 0;
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    OptsPrice += int.Parse(CheckBoxList1.Items[i].Value);
                }
            }
            int Warranty = int.Parse(DropDownList2.SelectedItem.Value) * 120;
            int price = 0;
            if (DropDownList1.SelectedItem.Value == "a3.jpeg")
            {
                price = 22950;
            }
            else if (DropDownList1.SelectedItem.Value == "a7.png")
            {
                price = 6687000;
            }
            else if (DropDownList1.SelectedItem.Value == "glc.png")
            {
                price = 3925000;
            }
            else if (DropDownList1.SelectedItem.Value == "boxster.png")
            {
                price = 6950000;
            }
            CarPrice.InnerText = String.Format("{0:0,0.0€}", price);
            OptPrice.InnerText = String.Format("{0:0,0.0€}", OptsPrice);
            WarrantyPrice.InnerText = String.Format("{0:0,0.0€}", Warranty);
            price = price + OptsPrice + Warranty;
            TotalPrice.InnerText = String.Format("{0:0,0.0€}", price);
        }


    }
}