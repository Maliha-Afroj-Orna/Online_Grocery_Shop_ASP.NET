using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGroceryShop.View.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            GetProducts();
            GetCategories();
            SumSell();
            GetSellers();
            GetSeller();
        }

        private void GetSeller()
        {
            string Query = "select * from SellerTbl";
            SellerCb.DataTextField = Con.getData(Query).Columns["SelName"].ToString();
            SellerCb.DataValueField = Con.getData(Query).Columns["SelId"].ToString();
            SellerCb.DataSource = Con.getData(Query);
            SellerCb.DataBind();
        }
        private void GetProducts()
        {
            string Query = "select Count(*) from ProductTbl";
            PNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
            PNumTb.DataBind();
        }

        private void GetCategories()
        {
            string Query = "select Count(*) from CategoryTbl";
            CatNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
            CatNumTb.DataBind();
        }

        private void GetSellers()
        {
            string Query = "select Count(*) from SellerTbl";
            SelNumTb.InnerText = Con.getData(Query).Rows[0][0].ToString();
            SelNumTb.DataBind();
        }

        private void SumSell()
        {
            string Query = "select Sum(Amount) from BillTbl";
            FinanceTb.InnerText ="Rs " + Con.getData(Query).Rows[0][0].ToString();
            FinanceTb.DataBind();
        }

        private void SumSellBySeller()
        {
            string Query = "select Sum(Amount) from BillTbl where Seller = " + SellerCb.DataValueField+" ";
            TotalTb.InnerText = "Rs " + Con.getData(Query).Rows[0][0].ToString();
            TotalTb.DataBind();
        }

        protected void SellerCb_SelectedIndexChanged(object sender, EventArgs e)
        {
            SumSellBySeller();
        }
    }
}