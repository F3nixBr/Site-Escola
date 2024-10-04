<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .inputSubmit {
    background-color: dodgerblue;
    border: none;
    padding: 20px;
    width: 100%;
    border-radius: 10px;
    color: white;
    font-size: 20px;
}

.inputSubmit:hover {
    background-color: deepskyblue;
    cursor: pointer;
}

    </style>
</head>
<body>
    <header>
        <h1 class="header-title">Escola Municipal Professora Rejane</h1>
    </header>
    <div class="login-container">
        <h1 class="login-title">Login</h1>
        <form action="testLogin.php" method="POST">
            <input type="text" name="cpf" placeholder="CPF">
            <br><br>
            <input type="password" name="senha" placeholder="Senha">
            <br><br>
            <input class="inputSubmit" type="Submit" name="submit" value="Logar">
        </form>
    </div>
</body>
</html>