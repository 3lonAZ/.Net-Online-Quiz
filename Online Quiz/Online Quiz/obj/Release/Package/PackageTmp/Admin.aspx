<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Online_Quiz.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Admin</title>
    <link rel="icon" href="../images/icon.ico" />
    <!-- style.css -->
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/home.css" />
    <!--Jquery-->
    <script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
    <button id="home_btn" runat="server" class="admin-btn" onserverclick="Home_BTN_Click">Home</button>
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="welcome_text">
            <div class="admin-area">
                <input id="Admin" class="username" type="text" runat="server" placeholder="İstifadəçi Adı" autocomplete="off" />
                <input id="Password" class="password" type="password" runat="server" placeholder="Şifrə" />     
                <label id="fail_log" runat="server" visible="false">İstifadəçi adı və ya Şifrə yanlış !</label>
                <button type="submit" class="login-btn" runat="server" onserverclick="AddBTN_Click">Daxil Ol</button>   
             </div>
        </div>
      </div>
    </form>
</body>
</html>

