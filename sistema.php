<?php
    session_start();
    //print_r($_SESSION);
    if((!isset ($_SESSION['cpf']) == true) and (!isset ($_SESSION['senha']) == true))
    {
        unset($_SESSION['cpf']);
        unset($_SESSION['senha']);
        header('Location: login.php');
    }
    $logado = $_SESSION['cpf'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Inicial</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
        <nav>
            <ul>
                <!-- Links das páginas -->
                <li><a href= "sistema.php">Página Inicial</li>
                <li><a href="Grade.php">Grade das Aulas</a></li>
                <li><a href="Notas.php">Notas</a></li>
                <li><a href="Avisos.php">Avisos</a></li> 
                <li><a href="CarteiraEstudantil.php">Carteira Digital</a></li>

                <button class="logout-btn" onclick="window.location.href='logout.php'">Sair</button>
                
            </ul>
        </nav>
    </header>
    <footer>
        <p>2024 Trabalho Felipe</p>
    </footer>
</body>
</html>