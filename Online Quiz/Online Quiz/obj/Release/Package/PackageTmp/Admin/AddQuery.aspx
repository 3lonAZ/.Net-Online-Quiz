<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuery.aspx.cs" Inherits="Online_Quiz.Add_Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <title>Əlavə</title>
        <link rel="icon" href="../images/icon.ico" />
        <link rel="stylesheet" type="text/css" href="../css/reset.css" />
        <link rel="stylesheet" type="text/css" href="../css/addquery.css" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server" method="post">
       <div class="container">
            <header>
            </header>
            <main>
                <article id="quiz-field">
                    <section id="quiz-header">
                        <h1>Sual Əlavə Formu</h1>
                    </section>
                    <section id="quiz-body">
                            <input id="query" class="add-query" type="text" placeholder="Sualı Daxil Edin" runat="server" required="required" />
                            <input id="variant_A" class="variant" type="text" placeholder="Variant A) Cavabı Daxil Edin" runat="server" required="required" />
                            <input id="variant_B" class="variant" type="text" placeholder="Variant B) Cavabı Daxil Edin" runat="server" required="required" />
                            <input id="variant_C" class="variant" type="text" placeholder="Variant C) Cavabı Daxil Edin" runat="server" required="required" />
                            <input id="variant_D" class="variant" type="text" placeholder="Variant D) Cavabı Daxil Edin" runat="server" required="required" />
                            <select id="trueVariant" class="true_variant" runat="server" required="required">
                                 <option value="">
                                    Doğru Variantı Seçin...
                                </option>
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
                            <input type="submit" class="next" runat="server" onserverclick="AddBTN_Click" value="Əlavə Et"/>
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
</body>
</html>
