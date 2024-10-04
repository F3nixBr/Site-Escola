<?php
session_start();
if ((!isset($_SESSION['cpf']) == true) and (!isset($_SESSION['senha']) == true)) {
    unset($_SESSION['cpf']);
    unset($_SESSION['senha']);
    header('Location: login.php');
}
$logado = $_SESSION['cpf'];
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade das Aulas</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="CarteiraEstudantil.php">Carteira Digital</a></li>
            <li><a href="Grade.php">Grade das Aulas</a></li>
            <li><a href="Notas.php">Notas</a></li>
            <li><a href="Avisos.php">Avisos</a></li>
            <button class="logout-btn" onclick="window.location.href='logout.php'">Sair</button>
        </ul>
    </nav>
</header>

<main>
    <h1>Grade da Turma 1-A</h1> <!-- Titulo da página -->
    
    <table>
        <thead>
            <tr>
                <th>Horário</th>
                <th>Segunda-feira</th>
                <th>Terça-feira</th>
                <th>Quarta-feira</th>
                <th>Quinta-feira</th>
                <th>Sexta-feira</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>07:30 - 08:15</td>
                <td>Matemática</td     <!-- 1 -->
                <td>Educação Física</td <!-- 6 -->
                <td>Matemática</td     <!-- 1 -->
                <td>Português</td      <!-- 2 -->
                <td>Ensino Religioso</td <!-- 8 -->
            </tr>
            <tr>
                <td>08:20 - 09:05</td>
                <td>Português</td      <!-- 2 -->
                <td>Matemática</td     <!-- 1 -->
                <td>Biologia</td       <!-- 3 -->
                <td>História</td       <!-- 4 -->
                <td>Matemática</td     <!-- 1 -->
            </tr>
            <tr>
                <td>09:10 - 09:55</td>
                <td>Biologia</td       <!-- 3 -->
                <td>Biologia</td       <!-- 3 -->
                <td>História</td       <!-- 4 -->
                <td>Ciências</td       <!-- 5 -->
                <td>História</td       <!-- 4 -->
            </tr>
            <tr>
                <td>10:00 - 10:45</td>
                <td>História</td       <!-- 4 -->
                <td>Ciências</td       <!-- 5 -->
                <td>Matemática</td     <!-- 1 -->
                <td>Ciências</td       <!-- 5 -->
                <td>Ciências</td       <!-- 5 -->
            </tr>
            <tr>
                <td>10:50 - 11:00</td>
                <td>Educação Física</td <!-- 6 -->
                <td>Educação Física</td <!-- 6 -->
                <td>Educação Física</td <!-- 6 -->
                <td>Educação Física</td <!-- 6 -->
                <td>Educação Física</td <!-- 6 -->
            </tr>
            <!-- Adicione mais linhas conforme necessário -->
        </tbody>
    </table>
</main>

<!-- Rodapé da página -->
<footer>
    <p>&copy;2024 Trabalho Felipe</p>
</footer>

</body>
</html>
