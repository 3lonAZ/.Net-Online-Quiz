<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Quiz.Admin" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Admin Panel</title>
  <link rel="icon" href="../images/icon.ico" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css" />
  
  <link rel="stylesheet" type="text/css" href="../css/admin.css" />

</head>
<body>
    <form id="form1" runat="server">
    <section id="section-admin">
  <!--for demo wrap-->
  <h1>Welcome: <span id="admin_name" runat="server">'admin'</span></h1> 
  <button id="exit_btn" runat="server" onserverclick="Exit_BTN_Click">Exit</button>
  <div class="tbl-header">
    <table>
      <thead>
        <tr>
          <th>Id</th>
          <th>Question</th>
          <th>A</th>
          <th>B</th>
          <th>C</th>
          <th>D</th>
          <th>Correct Answer</th>
          <th>Remove</th>
          <th>Change</th>
        </tr>
      </thead>
    </table>
  </div>
        
  <div class="tbl-content">
          <asp:GridView ID="GridView1" runat="server" ShowHeader="false" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
              <Columns>
                  <asp:CommandField ButtonType="Button" ShowDeleteButton="true" DeleteText="Remove" />
                  <asp:CommandField ButtonType="Button" ShowEditButton="true" EditText="Change" ControlStyle-BackColor="#0a5bdb" />
              </Columns>
          </asp:GridView>
  </div>
</section>
<section id="section-alertBox" style="display: none;">
    <img id="emoji" src="../images/default.png">
    <h1>WARNING!</h1>
    <span>
      Are you sure delete all question?
    </span>
    <footer id="alert-footer">
      <button id="alert_cancel">Cancel</button>
      <button id="alert_delete" runat="server" onserverclick="DeleteDB">Delete</button>
    </footer>
</section>
      </form>
<footer>
        <button class="add-query">Add Question</button>
        <button class="delete-query">Delete All</button>
</footer>

<!--template -->
  <script src="../js/jquery-3.5.1.min.js"></script>
  <script src="../js/adminData.js"></script>
</body>
</html>