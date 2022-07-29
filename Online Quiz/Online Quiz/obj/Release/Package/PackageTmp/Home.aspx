<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Quiz.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Başla</title>
    <link rel="icon" href="../images/icon.ico" />
    <!-- style.css -->
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/home.css" />
    <!--Jquery-->
    <script src="js/jquery-3.5.1.min.js"></script>
</head>
<body>
    <button id="admin_btn" runat="server" class="admin-btn" onserverclick="Admin_BTN_Click">Admin</button>
    <form id="form1" runat="server">
    <div class="wrapper">
        <div class="welcome_text">
            <div class="welcome_form">
                <input id="username" runat="server" type="text" placeholder="İstifadəçi Adı" required="required" />
                <input type="submit" runat="server" onserverclick="Start_BTN_Click" value="Başla"/>
            </div>
        </div>
      </div>
    </form>
</body>
</html>
