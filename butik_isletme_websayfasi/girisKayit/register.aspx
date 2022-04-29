<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="butik_isletme_websayfasi.girisKayit.register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Registration Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/Temp/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="/Temp/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/Temp/dist/css/adminlte.min.css">
</head>
<body class="hold-transition register-page">
<form runat="server">
<div class="register-box">
  <div class="register-logo">
    <a href="/Temp/index2.html"><b>Kayıt Sayfası</b></a>
  </div>
  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Lütfen aşşağıdaki Bilgileri doldurunuz</p>

      <form action="/Temp/index.html" method="post">
        <div class="input-group mb-3">
          <asp:TextBox ID="ad" CssClass="form-control" runat="server">AD</asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>

        <div class="input-group mb-3">
<asp:TextBox ID="email" CssClass="form-control" runat="server">email</asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
            <asp:TextBox ID="sifre" CssClass="form-control" runat="server">Şifre</asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <asp:TextBox ID="sifreTekrari" CssClass="form-control" runat="server">Şifre tekrarı</asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <asp:Button ID="kayit" runat="server" Text="Kaydol" OnClick="kayit_Click" />
          <!-- /.col -->
        </div>
      </form>
      <a href="login.aspx" class="text-center">Giriş sayfasına gitmek için tıklayın</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="/Temp/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/Temp/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/Temp/dist/js/adminlte.min.js"></script>
</form>
</body>
</html>

