<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddQuery.aspx.cs" Inherits="Online_Quiz.Add_Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <title>Add Question</title>
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
                        <h1>Add Question Form</h1>
                    </section>
                    <section id="quiz-body">
                            <input id="query" class="add-query" type="text" placeholder="Insert Question" runat="server" required="required" />
                            <input id="variant_A" class="variant" type="text" placeholder="Variant A) Insert to Answer" runat="server" required="required" />
                            <input id="variant_B" class="variant" type="text" placeholder="Variant B) Insert to Answer" runat="server" required="required" />
                            <input id="variant_C" class="variant" type="text" placeholder="Variant C) Insert to Answer" runat="server" required="required" />
                            <input id="variant_D" class="variant" type="text" placeholder="Variant D) Insert to Answer" runat="server" required="required" />
                            <select id="trueVariant" class="true_variant" runat="server" required="required">
                                 <option value="">
                                    Select Correct Variant...
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
                            <button id="cancel" runat="server" onserverclick="Cancel_BTN_Click">Cancel</button>
                            <input type="submit" class="next" runat="server" onserverclick="AddBTN_Click" value="Insert"/>
                    </section>
                </article>
            </main>
            <footer>
                <address>
                    <small>© Online test 2020 created by 3lon. All rights reserved</small>
                </address>
            </footer>
        </div>
    </form>
</body>
</html>
