<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yoneticiSayfası.aspx.cs" Inherits="butik_isletme_websayfasi.yonetici.yoneticiSayfası" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136px;
        }
        .auto-style3 {
            width: 163px;
        }
        .auto-style4 {
            width: 159px;
        }
        .auto-style5 {
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <table>
  <tr>
    <th class="auto-style3">Ururn adı</th>
    <th class="auto-style4">Urun Fiyat</th>
    <th class="auto-style1">Kumaş</th>
    <th class="auto-style1">Urun beden</th>
    <th class="auto-style5">Urun Renk</th>
  </tr>
  <tr>
    <td class="auto-style3">
        <asp:TextBox ID="TextBox1" runat="server" Width="150px" Height="20px"></asp:TextBox>
      </td>
    <td class="auto-style4">
        <asp:TextBox ID="TextBox2" runat="server" Width="150px" Height="20px"></asp:TextBox>
      </td>
    <td class="auto-style1">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="150px" DataSourceID="SqlDataSource1" DataTextField="urunKumasi" DataValueField="urunKumasi">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:giyimMagzasiDBConnectionString %>" SelectCommand="SELECT [urunKumasi], [urunKumasi_id] FROM [Kumas]"></asp:SqlDataSource>
      </td>
    <td class="auto-style3">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="150px" DataSourceID="SqlDataSource2" DataTextField="urunBeden" DataValueField="urunBeden">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:giyimMagzasiDBConnectionString %>" SelectCommand="SELECT [urunBeden], [urunBeden_id] FROM [Beden]"></asp:SqlDataSource>
      </td>
    <td class="auto-style5">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="150px" DataSourceID="SqlDataSource3" DataTextField="renk" DataValueField="renk">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:giyimMagzasiDBConnectionString %>" SelectCommand="SELECT [renk], [renk_id] FROM [Renk]"></asp:SqlDataSource>
      </td>
  </tr>
  <tr>
    <td class="auto-style3">
        <asp:Button ID="ekle" runat="server" Text="Ekle" Width="100px" />
      </td>
    <td class="auto-style4">&nbsp;</td>
    <td class="auto-style1">
        <asp:Button ID="sil" runat="server" Text="Sil" Width="100px" />
      </td>
    <td class="auto-style3">&nbsp;</td>
    <td class="auto-style5">
        <asp:Button ID="guncelle" runat="server" Text="Güncelle" Width="100px" />
      </td>
  </tr>
  
</table>

    </form>

</body>
</html>
