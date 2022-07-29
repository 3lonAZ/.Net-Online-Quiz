<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="End.aspx.cs" Inherits="Online_Quiz.End" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Son</title>
    <link rel="icon" href="../images/icon.ico" />
    <!-- style.css -->
    <link rel="stylesheet" href="css/End.css" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="wrapper">
        <div>
           <i class="fas fa-award award_icon"></i>
           <h3 class="username">Test Bitdi !</h3>
           <p class="userpoints">Təbriklər: <span id="username" runat="server"></span></p>
           <p class="userpoints">Doğru Cavab: <span id="true_reply_count" runat="server"></span></p>
          <p class="usertime"> Yanlış Cavab: <span id="false_reply_count" runat="server"></span></p>
          <button id="HomeBTN" runat="server" onserverclick="Home_BTN_Click">Home</button>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/d56261bbb9.js"></script>


        <!-- user info -->
        <script src="dist/js/userInfo.js"></script>
    </form>
</body>
</html>
