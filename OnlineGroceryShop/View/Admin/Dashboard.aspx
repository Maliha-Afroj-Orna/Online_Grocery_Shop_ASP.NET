<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineGroceryShop.View.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
  <!--  <h1>Dashboard</h1> -->

    <div class="container-fluid">
        <div style="height:80px;" class="row">
            <div class="col-md-3"></div>
            <div style="margin-top:1%;" class="col-md-8">
                <div class="row">
                    <div class="col-1">
                         <img style="height:48px;width:48px;" src="../../Asset/Images/dashboardlayout.png" class="rounded" />
                    </div>
                    <div class="col-8"><h2 class="text-danger">Grocery Dashboard</h2></div>
                </div>
                
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10">
                <div class="row">
                    <div class="col-md-3 bg-danger rounded">
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;" src="../../Asset/Images/budget.png" />
                        </div>
                        <div class="col-md-10">
                            <h3 class="text-white">Products</h3>
                            <h1 class="text-white" runat="server" id="PNumTb">Num</h1>
                        </div>
                        </div>
                        
                    </div>
                    <div class="col-md-1 bg-light">
                       
                    </div>
                    <div class="col-md-3 bg-warning rounded">
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;" src="../../Asset/Images/category.png" />
                        </div>
                        <div class="col-md-10">
                            <h3 class="text-white">Categories</h3>
                            <h1 class="text-white" runat="server" id="CatNumTb">Num</h1>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-1 bg-light">
                       
                    </div>
                    <div class="col-md-3 bg-primary rounded">
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;color:white;" src="../../Asset/Images/money.png" />
                        </div>
                        <div class="col-md-10">
                            <h3 class="text-white">Finances</h3>
                            <h1 class="text-white" runat="server" id="FinanceTb">Num</h1>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-1 bg-light">
                        
                    </div>
                </div>
              </div>
            
            <div class="col-1"></div>
        </div>
        <div class="row mb-5 mt-5"></div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-10">
                <div class="row">
                            <div class="col">
                                 <div class="mb-2" style="width:250px;">
    <asp:DropDownList ID="SellerCb" class="form-control" runat="server" OnSelectedIndexChanged="SellerCb_SelectedIndexChanged"></asp:DropDownList>
  </div>
                            </div>
                            <div class="col"></div>
                            <div class="col"></div>
                        </div>
                <div class="row">
                    <div class="col-md-3 bg-info rounded">
                        
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;" src="../../Asset/Images/budget.png" />
                        </div>
                        <div class="col-md-10">

                            <h4 class="text-white">Categories Amount</h4>
                            <h1 class="text-white" runat="server" id="AmountCatTb">Num</h1>
                        </div>
                        </div>
                        
                    </div>
                    <div class="col-md-1 bg-light">
                       
                    </div>
                    <div class="col-md-3 bg-secondary rounded">
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;" src="../../Asset/Images/category.png" />
                        </div>
                        <div class="col-md-10">
                            <h3 class="text-white">Total Sells</h3>
                            <h1 class="text-white" runat="server" id="TotalTb">Num</h1>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-1 bg-light">
                       
                    </div>
                    <div class="col-md-3 bg-danger rounded">
                        <div class="row">
                            <div class="col-md-2">
                            <img style="margin-top:5px;height:30px;width:30px;color:white;" src="../../Asset/Images/money.png" />
                        </div>
                        <div class="col-md-10">
                            <h3 class="text-white">Sellers</h3>
                            <h1 class="text-white" runat="server" id="SelNumTb">Num</h1>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-1 bg-light">
                        
                    </div>
                </div>
              </div>
            
            <div class="col-1"></div>
        </div>

        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
               <img style="height:220px;width:350px;" src="../../Asset/Images/grocery1.png" />
            </div>
            <div class="col-4"></div>

        </div>

    </div>
</asp:Content>
