<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineGroceryShop.View.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"> <br /> <img style="height:50px;width:50px;margin-left:7%;" src="../../Asset/Images/harvest.png" /> <h4 class="text-danger">Manage Categories</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2 class="text-danger">Category Details</h2>
                
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category Name</label>
    <input type="text" class="form-control" id="CatNameTb">
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category Remarks</label>
    <input type="text" class="form-control" id="CatRemarkTb">
  </div>
                    
                <br />
                <br />
                <br />
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
