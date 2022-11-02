using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGroceryShop.View.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowCategories();
        }
        //Add this Method
        public override void VerifyRenderingInServerForm(Control control)
        {

        }
        private void ShowCategories()
        {
            string Query = "select * from CategoryTbl";
            CategoryGV.DataSource = Con.getData(Query);
            CategoryGV.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || CatRemarkTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarkTb.Value;

                    string Query = "insert into CategoryTbl values('{0}','{1}')";
                    Query = string.Format(Query, CName, CRem);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Added!!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;

                    string Query = "delete from CategoryTbl where CatId = '{0}'";
                    Query = string.Format(Query, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Deleted!!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        int Key = 0;
        protected void CategoryGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatNameTb.Value = CategoryGV.SelectedRow.Cells[2].Text;
            CatRemarkTb.Value = CategoryGV.SelectedRow.Cells[3].Text;
           
            if (CatNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CategoryGV.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CatNameTb.Value == "" || CatRemarkTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string CName = CatNameTb.Value;
                    string CRem = CatRemarkTb.Value;
                    

                    string Query = "update CategoryTbl set CatName = '{0}', CatDescription = '{1}' where CatId = '{2}'";
                    Query = string.Format(Query, CName, CRem, CategoryGV.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowCategories();
                    ErrMsg.InnerText = "Category Updated!!!";
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}