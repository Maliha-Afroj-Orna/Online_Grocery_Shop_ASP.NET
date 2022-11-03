<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineGroceryShop.View.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"><img style="height:50px;width:50px;margin-left:7%;" src="../../Asset/Images/harvest.png" /> <h4 class="text-danger">Manage Sellers</h4>
            </div>
        </div>
        <div class="row">
            <div style="margin-bottom:2%;" class="col-md-4">
                <h2 class="text-danger">Sellers Details</h2>
                
                    <div class="mb-3">
    <label for="SNameTb" class="form-label">Seller Name</label>
    <input type="text" class="form-control" id="SNameTb" runat="server">
  </div>
                    <div class="mb-3">
    <label for="SEmailTb" class="form-label">Seller Email</label>
    <input type="email" class="form-control" id="SEmailTb" runat="server">
  </div>
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Seller Password</label>
    <input type="text" class="form-control" id="sellerPassTb" runat="server">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Seller Phone</label>
    <input type="text" class="form-control" id="PhoneTb" runat="server">
  </div>
                <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Seller Address</label>
    <input type="text" class="form-control" id="SellAddressTb" runat="server">
  </div>
                <label id="ErrMsg" runat="server" class="text-danger"></label><br />
                <asp:Button text="   Edit   " class="btn btn-danger" runat="server" ID="EditBtn" OnClick="EditBtn_Click" />
                <asp:Button text="  Save  " class="btn btn-danger" runat="server" ID="SaveBtn" OnClick="SaveBtn_Click" />
                <asp:Button text="Delete" class="btn btn-danger" runat="server" ID="DeleteBtn" OnClick="DeleteBtn_Click" />
            </div>
            <div style="margin-bottom:2%;margin-top:3%;" class="col-md-8">
                 <asp:GridView runat="server" class="table table-hover" ID="SellerGV" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerGV_SelectedIndexChanged">

                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
