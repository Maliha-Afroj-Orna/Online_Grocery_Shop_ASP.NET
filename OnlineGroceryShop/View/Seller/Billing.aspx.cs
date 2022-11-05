using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGroceryShop.View.Seller
{
    public partial class Billing : System.Web.UI.Page
    {
        Models.Functions Con;
        DataTable dt = new DataTable();
        int Seller = Login.SKey;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowProducts();

            if(!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5]{
                        new DataColumn("ID"),
                        new DataColumn("Product"),
                        new DataColumn("Price"),
                        new DataColumn("Quantity"),
                        new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
            }
        }

        private void InsertBill()
        {
            try
            {
                    string Query = "insert into BillTbl values('{0}','{1}',{2})";
                    Query = string.Format(Query, System.DateTime.Today, Seller, Amount);
                    Con.SetData(Query);
                    ErrMsg.InnerText = "Bill Inserted!!!";
               
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
        int GrdTotal;
        protected void BindGrid()
        {
            BillGV.DataSource = (DataTable)ViewState["Bill"];
            BillGV.DataBind();
        }
        public static int Amount;

        //Add this Method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowProducts()
        {
            string Query = "select PrId as Id, PrName as Name, PrCat as Category, PrPrice as Price, PrQty as Quantity from ProductTbl";
            ProductGV.DataSource = Con.getData(Query);
            ProductGV.DataBind();
        }

        int Key = 0;
        int Stock;
        protected void ProductGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            PNameTb.Value = ProductGV.SelectedRow.Cells[2].Text;
           // CategoryCb.SelectedValue = ProductGV.SelectedRow.Cells[3].Text;
            PrPriceTb.Value = ProductGV.SelectedRow.Cells[4].Text;
            Stock = Convert.ToInt32(ProductGV.SelectedRow.Cells[5].Text);
            
            if (PNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ProductGV.SelectedRow.Cells[1].Text);
            }
        }

       private void UpdateStock()
        {
            
            int newQty;
            newQty = Convert.ToInt32(ProductGV.SelectedRow.Cells[5].Text) - Convert.ToInt32(PrQtyTb.Value);

            string Query = "update ProductTbl set PrQty = '{0}' where PrId = {1}";
            Query = string.Format(Query, newQty, ProductGV.SelectedRow.Cells[1].Text);
            Con.SetData(Query);
            ShowProducts();
            ErrMsg.InnerText = "Quantity Updated!!!";
        }
       
        protected void AddToBillBtn_Click(object sender, EventArgs e)
        {
            int total = Convert.ToInt32(PrQtyTb.Value) * Convert.ToInt32(PrPriceTb.Value);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(BillGV.Rows.Count + 1,
                PNameTb.Value.Trim(),
                PrPriceTb.Value.Trim(),
                PrQtyTb.Value.Trim(),
                total
                );

            ViewState["Bill"] = dt;
            this.BindGrid();
            UpdateStock();

            GrdTotal = 0;
            for(int i=0; i<=BillGV.Rows.Count-1;i++)
            {
                GrdTotal = GrdTotal + Int32.Parse(BillGV.Rows[i].Cells[4].Text.ToString());
            }
            Amount = GrdTotal;
            GrdTotTb.InnerHtml = "Rs " + GrdTotal;
            PNameTb.Value = string.Empty;
            PrPriceTb.Value = string.Empty;
            PrQtyTb.Value = string.Empty;
        }

        protected void PrintBtn_Click(object sender, EventArgs e)
        {
            InsertBill();
        }
    }
}