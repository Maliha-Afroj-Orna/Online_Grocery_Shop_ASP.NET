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
    <input type="text" class="form-control" id="CatNameTb" runat="server">
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Category Remarks</label>
    <input type="text" class="form-control" id="CatRemarkTb" runat="server">
  </div>
                    
                <br />
                <br />
                <br />
                <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button text="   Edit   " class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button text="  Save  " class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click"/>
            </div>
            <div class="col-md-8">
                <asp:GridView runat="server" class="table table-hover" ID="CategoryGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoryGV_SelectedIndexChanged">

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
