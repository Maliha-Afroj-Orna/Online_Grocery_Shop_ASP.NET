<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineGroceryShop.View.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Asset/Lib/Bootstrap/css/bootstrap.min.css"/>
</head>
<body>
    

    <div class="container-fluid">
        <div class="row" style="height:90px;"></div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <img style="height:100%;width:100%;" src="../Asset/Images/grocery1.png" class="img-fluid"/>
            </div>
            <div class="col-md-4">
                <h1 class="text-danger">Sign Up</h1>


              
                    <div class="mb-3">
    <label for="EmailId" class="form-label">Email address</label>
    <input type="email" class="form-control" id="EmailId" runat="server" required="required" />
  </div>
  <div class="mb-3">
    <label for="UserPasswordTb" class="form-label">Password</label>
    <input type="password" class="form-control" id="UserPasswordTb" runat="server" required="required" />
  </div>

  <div class="mb-3 form-group">
    <input type="radio" class="form-check-input" id="SellerRadio" name="Role" runat="server" />
    <label class="form-check-label" for="SellerRadio">Seller</label>
      <input type="radio" class="form-check-input" id="AdminRadio" checked="True" name="Role" runat="server" />
    <label class="form-check-label" for="AdminRadio">Admin</label>
  </div>
    <div class="mb-3 d-grid">
        <label id="InfoMsg" runat="server" class="text-danger"></label>
        <asp:Button text="Login" class="btn btn-danger btn-block" runat="server" ID="LoginBtn" OnClick="LoginBtn_Click" />

       
  </div>
  
            
            </div>
        </div>
        </div>
  

</body>
</html>
