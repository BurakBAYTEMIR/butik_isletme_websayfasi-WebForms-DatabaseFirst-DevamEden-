<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotPassword.aspx.cs" Inherits="butik_isletme_websayfasi.girisKayit.forgotPassword" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Forgot Password</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/Temp/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="/Temp/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/Temp/dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="/Temp/index2.html"><b>Hesabınızı Mı Unuttunuz</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">

        <form id="form1" runat="server">
      <p class="login-box-msg">Epostanızı girerek hesabınızı hatırlayabilirsiniz</p>

        <div class="input-group mb-3">
          <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="265px">Eposta</asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
              
              <asp:Button runat="server" ID="btn_hatırlat" Text="Hatırlat" CssClass="btn btn-priamry btn-block" OnClick="btn_tikla_Click"/>
              
          </div>
          <!-- /.col -->
        </div>
        </form>

      <p class="mt-3 mb-1">
        <a href="login.aspx">Giriş yap</a>
      </p>
      <p class="mb-0">
        <a href="register.aspx" class="text-center">Kayıt ol</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="/Temp/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/Temp/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/Temp/dist/js/adminlte.min.js"></script>
</body>
</html>

