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
    <title>Sign up</title>
    <link rel="stylesheet" href="<%=url%>/assets/css/signup.css">
</head>
<body>
    <section>
        <div class="container">
            <div class="user singinBx">
                <div class="imgBx"><img src="<%=url%>/assets/img/b.png" width="100px" height="100px" alt=""></div>
                <div class="formBx">
                    <form action="<%=url%>/signup" method="post">
                        <p>
                            <h2>S' <span>inscrire</span>
                                <br>
                                <small class="signup">Avez-vous déjà un compte ?<a href="<%=url%>/login">Se connecter</a></small>
                            </h2>  
                        </p>
                        <% if(errors != null) { %>
                            <div class="alert alert-danger">
                                <%=errors%>
                            </div>
                        <% } %>
                        <label for="name">Nom</label>
                        <input type="text" name="nom" placeholder="Votre nom" required>
                        <label for="name">Pr&eacute;nom</label>
                        <input type="text" name="surname" placeholder="Votre nom" required>
                        <label for="email">Adresse email</label>
                        <input type="email" name="email" placeholder="Exemple@gmail.com" required>
                        <label for="name">Date de Naissance</label>
                        <input type="date" name="datenaissance" placeholder="date" required>
                        <label for="tel">Telephone</label>
                        <input type="tel" name="telephone" placeholder="Entrez votre numero de telephone" required>
                        <label for="password">Mots de passe</label>
                        <input type="password" name="password" placeholder="Entrez votre mot de passe" required>
                        <hr>
                        <input type="Submit" name="" value="Créer un compte"> 
                    </form>
                </div>
            </div>
 
        </div>
    </section>
</body>
</html>