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

// Consulta para obter o AlunoID do aluno logado
$sql_aluno = "SELECT AlunoID FROM Aluno WHERE CPF = '$logado'";
$result_aluno = $conn->query($sql_aluno);

if ($result_aluno->num_rows > 0) {
    $row_aluno = $result_aluno->fetch_assoc();
    $aluno_id = $row_aluno['AlunoID'];

    // Consulta para buscar as notas do aluno logado
    $sql_notas = "SELECT n.NotaID, d.Nome AS Disciplina, n.Data, n.Nota 
                  FROM Notas n 
                  JOIN Disciplina d ON n.DisciplinaID = d.DisciplinaID 
                  WHERE n.AlunoID = '$aluno_id' 
                  ORDER BY n.Data DESC";
    $result_notas = $conn->query($sql_notas);
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
    <title>Notas</title>
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
        <h1>Notas</h1>
        <table>
            <tr>
                <th>Disciplina</th>
                <th>Data</th>
                <th>Nota</th>
            </tr>
            <?php
            if ($result_notas->num_rows > 0) {
                while ($row = $result_notas->fetch_assoc()) {
                    echo "<tr>
                            <td>" . htmlspecialchars($row["Disciplina"]) . "</td>
                            <td>" . date("d/m/Y", strtotime($row["Data"])) . "</td>
                            <td>" . htmlspecialchars($row["Nota"]) . "</td>
                          </tr>";
                }
            } else {
                echo "<tr><td colspan='3'>Nenhuma nota encontrada.</td></tr>";
            }
            $conn->close();
            ?>
        </table>
    </div>
</main>
<footer>
    <p>&copy;2024 Trabalho Felipe</p>
</footer>
</body>
</html>
