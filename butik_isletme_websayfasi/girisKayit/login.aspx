<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="butik_isletme_websayfasi.girisKayit.login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Log in</title>


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
<form runat="server">
<div class="login-box">
  <div class="login-logo">
    <a href="/Temp/index2.html"><b>Mağzamıza Hoşgeldiniz</b></a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Lütfen Giriş Yapınız</p>

      <form action="/Temp/index3.html" method="post">
        <div class="input-group mb-3">         
<asp:TextBox ID="txt_mail" CssClass="form-control" runat="server" Width="563px">Mail</asp:TextBox>        
        </div>
        <div class="input-group mb-3">

            <asp:TextBox ID="txt_sifre" CssClass="form-control" runat="server">Şifre</asp:TextBox>
          
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              
               <asp:CheckBox ID="chk_musteri" Text="Müşteri" runat="server" />
             
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">        
              <asp:Button runat="server"  ID="btn_tikla" Text="Giriş Yap" CssClass="btn btn-priamry btn-block" OnClick="btn_tikla_Click"/>
          </div>
          <!-- /.col -->
        </div>
      </form>

      
      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="forgotPassword.aspx">Hesabımı unuttum</a>
      </p>
      <p class="mb-0">
        <a href="register.aspx" class="text-center">kayıt ol</a>
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
</form>
</body>
</html>
