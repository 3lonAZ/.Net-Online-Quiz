<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Quiz.Admin" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>İdarəçi Səhifəsi</title>
  <link rel="icon" href="../images/icon.ico" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
  
  <link rel="stylesheet" type="text/css" href="../css/admin.css" />

</head>
<body>
    <form id="form1" runat="server">
    <section id="section-admin">
  <!--for demo wrap-->
  <h1>Xoş Gəldin <span id="admin_name" runat="server">'admin'</span></h1> 
  <button id="exit_btn" runat="server" onserverclick="Exit_BTN_Click">Çıxış</button>
  <div class="tbl-header">
    <table>
      <thead>
        <tr>
          <th>Id</th>
          <th>Sual</th>
          <th>A</th>
          <th>B</th>
          <th>C</th>
          <th>D</th>
          <th>Doğru Cavab</th>
          <th>Sil</th>
          <th>Düzəlt</th>
        </tr>
      </thead>
    </table>
  </div>
        
  <div class="tbl-content">
          <asp:GridView ID="GridView1" runat="server" ShowHeader="false" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
              <Columns>
                  <asp:CommandField ButtonType="Button" EditText="Sil" ShowDeleteButton="true" />
                  <asp:CommandField ButtonType="Button" ShowEditButton="true" EditText="Düzəlt" ControlStyle-BackColor="#0a5bdb" />
              </Columns>
          </asp:GridView>
  </div>
</section>
<section id="section-alertBox" style="display: none;">
    <img id="emoji" src="../images/default.png">
    <h1>DİQQƏT!</h1>
    <span>
      Bütün məlumatları silmək istədiyinizdən əminsiniz ?
    </span>
    <footer id="alert-footer">
      <button id="alert_cancel">Ləğv Et</button>
      <button id="alert_delete" runat="server" onserverclick="DeleteDB">Sil</button>
    </footer>
</section>
      </form>
<footer>
        <button class="add-query">Sual Əlavə Et</button>
        <button class="delete-query">Hamısını Sil</button>
</footer>

<!--template -->
  <script src="../js/jquery-3.5.1.min.js"></script>
  <script src="../js/adminData.js"></script>
</body>
</html>