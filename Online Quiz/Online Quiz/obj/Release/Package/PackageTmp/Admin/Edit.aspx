<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Online_Quiz.Test.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="windows-1252" />
        <title>Düzəliş</title>
        <link rel="icon" href="../images/icon.ico" />
        <link rel="stylesheet" type="text/css" href="../css/reset.css" />
        <link rel="stylesheet" type="text/css" href="../css/editQuery.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
            <header>
            </header>
            <main>
                <article id="quiz-field">
                    <section id="quiz-header">
                        <h1>Düzəltmə Formu</h1>
                    </section>
                    <section id="quiz-body">
                            <input type="text" id="querytxtBox" class="add-query" runat="server" required="required" />
                            <input type="text" id="variant_A" class="variant" placeholder="Variant A) Cavabı Daxil Edin" runat="server" required="required" />
                            <input type="text" id="variant_B" class="variant" placeholder="Variant B) Cavabı Daxil Edin" runat="server" required="required" />
                            <input type="text" id="variant_C" class="variant" placeholder="Variant C) Cavabı Daxil Edin" runat="server" required="required" />
                            <input type="text" id="variant_D" class="variant" placeholder="Variant D) Cavabı Daxil Edin" runat="server" required="required" />
                            <select id="trueVariant" class="true_variant" runat="server" required="required">
                                <option value="A">
                                    A
                                </option>
                                 <option value="B"> 
                                    B
                                </option>
                                 <option value="C">
                                    C
                                </option>
                                 <option value="D">
                                    D
                                </option>
                            </select>
                            <button id="cancel" runat="server" onserverclick="Cancel_BTN_Click">Ləğv Et</button>
                            <input type="submit" id="Change_BTN" class="next" runat="server" value="Dəyiş" onserverclick="Change_BTN_Click" />
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
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script>
        document.getElementById("cancel").addEventListener("click", function () {
            window.location.replace("Home.aspx");
        });        
    </script>
</body>
</html>

