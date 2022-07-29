
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="Online_Quiz.MyQuiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Suallar</title>
        <link rel="icon" href="../images/icon.ico" />
        <link rel="stylesheet" type="text/css" href="css/reset.css" />
        <link rel="stylesheet" type="text/css" href="css/startQuiz.css" />
        <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
    <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
</script>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();">

    <form id="form1" runat="server">
      <div class="container">
            <header>
            </header>
            <main>
                <article id="quiz-field">
                    <section id="quiz-header">
                        <h4 id="username" runat="server" class="user-name"></h4>
                        <div id="time">
                            <span class="time-label">00:30</span>
                        </div>
                    </section>
                    <section id="quiz-body">
                        <h1 id="query" runat="server" class="query"></h1>

                        <ul runat="server" id="myList" class="option-group">
                            <li id="A_Variants" runat="server" itemid="A" class="option"></li>
                            <li id="B_Variants" runat="server" itemid="B" class="option"></li>
                            <li id="C_Variants" runat="server" itemid="C" class="option"></li>
                            <li id="D_Variants" runat="server" itemid="D" class="option"></li>
                        </ul>
                        <button id="next_btn" runat="server" class="next" onserverclick="Next_BTN_Click" disabled="disabled">Növbəti Sual</button>
                        <button id="finish_btn" runat="server" class="finish" onserverclick="Finish_BTN_Click">Bitir</button>
                    </section>
                </article>
            </main>
            <footer>
                <address>
                    <small>©  Online test 2020 - ci ildə Murad Dadaşov tərəfindən yaradılmışdır. Bütün hüquqlar qorunur.</small>
                </address>
            </footer>
        </div>
        </form>
        <script type="text/javascript">
            $(document).ready(function () {
                // Time
                var time = 30;
                var timer = setInterval(timer_Tick, 1000);
                var warningTimer;
                const time_Show = $('.time-label');
                var led = false;

                function timer_Tick() {
                    time--;
                    if (time >= 10) {
                        time_Show.text("00:" + time.toString());
                    }
                    else {
                        time_Show.text("00:0" + time.toString());
                    }
                    if (time <= 5) {
                        warningTimer = setInterval(warningTimer_Tick, 500);
                    }
                    if (time == 0) {
                        clearInterval(timer);
                        clearInterval(warningTimer);

                        End();
                    }
                }

                function warningTimer_Tick() {
                    if (!led) {
                        time_Show.css('color', 'red');
                        led = true;
                    }
                    else {
                        time_Show.css('color', 'white');
                        led = false;
                    }
                }
                function End() {
                    window.location = 'End.aspx';
                }

                
                //Click
                $('li').click(function () {
                    $('li').css('background-color', 'white').css('color', 'black'); // Reset
                    $(this).css('background-color', '#341f97').css('color', 'white'); // Secileni Rengleyirem
                    $("#next_btn").prop("disabled", false);
                    var itemId = $(this).attr("itemid");
                    $.ajax({
                        url: 'Quiz.aspx/GetSelectedVariant',
                        dataType: 'json',
                        type: 'POST',
                        data: "{'itemId': '" + itemId + "'}",
                        contentType: 'application/json; charset=utf-8',
                    });
                });
            });
    </script>
    </body>
</html>
