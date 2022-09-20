<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineGroceryShop.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Asset/Lib/Bootstrap/css/bootstrap.min.css"/>
</head>
<body>
    <!-- 
        <form id="form1" runat="server">
        <div>
        </div>
    </form>
    -->

    <div class="container-fluid">
        <div class="row" style="height:90px;"></div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <img src="../Asset/Images/grocery1.png" class="img-fluid"/>
            </div>
            <div class="col-md-4">
                <h1 class="text-danger">Sign Up</h1>
              
                    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1">
  </div>
  <div class="mb-3 form-check">
    <input type="radio" class="form-check-input" id="SellerRadio">
    <label class="form-check-label" for="SellerRadio">Seller</label>
      <input type="radio" class="form-check-input" id="AdminRadio">
    <label class="form-check-label" for="AdminRadio">Admin</label>
  </div>
    <div class="mb-3 d-grid">
        <button type="submit" class="btn btn-danger btn-block">Login</button>
  </div>
  
            
            </div>
        </div>
    </div>

</body>
</html>
