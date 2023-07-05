<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String errors = (String) request.getAttribute("errors");
    String url = (String) request.getAttribute("url");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
        <section>
            <div class="container">
                <div class="user singinBx">
                    <div class="imgBx"><img src="assets/img/b.png" width="100px" height="100px" alt=""></div>
                    <div class="formBx">
                        <form action="login" method="post">
                            <p>
                            <h2>Se  <span>Connecter</span>
                                <br>
                                <small class="signup">Pas encore de compte ?<a href="<%=url%>/signup">S'inscrire ici</a></small>
                            </h2>

                            </p>
                            <% if(errors != null) { %>
                            <div class="alert alert-danger" role="alert">
                                <%=errors%>
                            </div>
                            <% } %>
                            <p>
                                <label for="email">Adresse email</label>
                                <input type="email" name="email" placeholder="Exemple@gmail.com" required>
                            </p>
                            <label for="password">Mots de passe</label>
                            <input type="password" name="password" placeholder="Entrez votre mot de passe" required>
                            <hr>
                            <input type="Submit" value="Se connecter">

                        </form>
                    </div>
                </div>

            </div>
        </section>
    </body>
</html>