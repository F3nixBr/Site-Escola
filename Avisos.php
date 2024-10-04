<?php
session_start();
if ((!isset($_SESSION['cpf']) == true) and (!isset($_SESSION['senha']) == true)) {
    unset($_SESSION['cpf']);
    unset($_SESSION['senha']);
    header('Location: login.php');
}

$logado = $_SESSION['cpf'];

// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = '';
$dbname = "escola_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

// Consulta para obter o TurmaID do aluno logado
$sql_turma = "SELECT TurmaID FROM Aluno WHERE CPF = '$logado'";
$result_turma = $conn->query($sql_turma);

if ($result_turma->num_rows > 0) {
    $row_turma = $result_turma->fetch_assoc();
    $turma_id = $row_turma['TurmaID'];

    // Consulta para buscar avisos da turma do aluno logado
    $sql_avisos = "SELECT Titulo, Conteudo, DataHora FROM avisos WHERE TurmaID = '$turma_id' ORDER BY DataHora DESC";
    $result_avisos = $conn->query($sql_avisos);
} else {
    echo "Nenhum aluno encontrado.";
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Avisos</title>
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
    <div class="container">
        <h1>Avisos</h1>
        <table>
            <tr>
                <th>Título</th>
                <th>Conteúdo</th>
                <th>Data e Hora</th>
            </tr>
            <?php
            if ($result_avisos->num_rows > 0) {
                while ($row = $result_avisos->fetch_assoc()) {
                    echo "<tr>
                            <td>" . htmlspecialchars($row["Titulo"]) . "</td>
                            <td>" . htmlspecialchars($row["Conteudo"]) . "</td>
                            <td>" . date("d/m/Y H:i:s", strtotime($row["DataHora"])) . "</td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='3'>Nenhum aviso encontrado.</td></tr>";
            }
            $conn->close();
            ?>
        </table>
    </div>
</main>
<footer>
    <p>2024 Trabalho Felipe</p>
</footer>
</body>
</html>
