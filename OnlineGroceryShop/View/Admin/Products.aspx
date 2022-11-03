<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="OnlineGroceryShop.View.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"> <br /> <img style="height:50px;width:50px;margin-left:7%;" src="../../Asset/Images/harvest.png" /> <h4 class="text-danger">Manage Products</h4>
            </div>
        </div>
        <div class="row">
            <div style="margin-bottom:2%;" class="col-md-4">
                <h2 class="text-danger">Products Details</h2>
                
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Name</label>
    <input type="text" class="form-control" id="PNameTb" runat="server">
  </div>
                    <div class="mb-3">
    <label for="CategoryCb" class="form-label">Product Category</label>
    <asp:DropDownList ID="CategoryCb" class="form-control" runat="server"></asp:DropDownList>
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Price</label>
    <input type="text" class="form-control" id="PriceTb" runat="server">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Quantity</label>
    <input type="text" class="form-control" id="ProdQtyTb" runat="server">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Expiration Date</label>
    <input type="date" class="form-control" id="ExpDate" runat="server">
  </div>
                 <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button text="   Edit   " class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button text="  Save  " class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click"  />
            </div>
            <div style="margin-bottom:2%;margin-top:3%;" class="col-md-8">
                 <asp:GridView runat="server" class="table table-hover" ID="ProductGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProductGV_SelectedIndexChanged">

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
