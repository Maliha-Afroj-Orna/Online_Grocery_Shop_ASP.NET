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
            <div class="col-md-4">
                <h2 class="text-danger">Products Details</h2>
                
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Name</label>
    <input type="text" class="form-control" id="PNameTb">
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Category</label>
    <input type="text" class="form-control" id="exampleInputEmail1">
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Price</label>
    <input type="text" class="form-control" id="exampleInputEmail1">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product Quantity</label>
    <input type="text" class="form-control" id="exampleInputEmail1">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Expiration Date</label>
    <input type="date" class="form-control" id="ExpDate">
  </div>
         
                <asp:Button text="   Edit   " class="btn btn-danger" runat="server" />
                <asp:Button text="  Save  " class="btn btn-danger" runat="server" />
                <asp:Button text="Delete" class="btn btn-danger" runat="server" />
            </div>
            <div class="col-md-8">
                <!-- Table Here -->
            </div>
        </div>
    </div>
</asp:Content>
