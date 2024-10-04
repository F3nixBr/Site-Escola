<?php
session_start();
if ((!isset($_SESSION['cpf'])) || (!isset($_SESSION['senha']))) {
    unset($_SESSION['cpf']);
    unset($_SESSION['senha']);
    header('Location: login.php');
    exit();
}

$logado = $_SESSION['cpf'];

// Conectar ao banco de dados
$servername = "localhost"; // substitua pelo seu servidor
$username = "root"; // substitua pelo seu nome de usuário
$password = ''; // substitua pela sua senha
$dbname = "escola_db"; // substitua pelo nome do seu banco de dados

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifique a conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Obtenha o CPF do usuário logado
$cpf = $_SESSION['cpf'];

// Busque os dados do aluno com base no CPF
$sql = "SELECT * FROM Aluno WHERE CPF = '$cpf'";
$result = $conn->query($sql);
$aluno = $result->fetch_assoc();

if (!$aluno) {
    echo "Aluno não encontrado!";
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carteira Estudantil - <?php echo $aluno['Nome']; ?></title>
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
        </ul>
    </nav>
    <!-- Botão de Sair reposicionado -->
    <button class="logout-btn" onclick="window.location.href='logout.php'">Sair</button>
</header>

<main>
    <h1>Carteira Estudantil Digital</h1>
    
    <div class="student-info">
        <h2>Dados do Aluno</h2>
        <table>
            <tr>
                <th>Nome</th>
                <td><?php echo $aluno['Nome']; ?></td>
            </tr>
            <tr>
                <th>Data de Nascimento</th>
                <td><?php echo isset($aluno['DataNascimento']) ? $aluno['DataNascimento'] : 'Não disponível'; ?></td>
            </tr>
            <tr>
                <th>Telefone</th>
                <td><?php echo $aluno['Telefone']; ?></td>
            </tr>
            <tr>
                <th>E-mail</th>
                <td><?php echo $aluno['Email']; ?></td>
            </tr>
            <tr>
                <th>CPF</th>
                <td><?php echo $aluno['CPF']; ?></td>
            </tr>
        </table>
    </div>
</main>


<footer>
    <p>&copy; 2024 Trabalho Felipe</p>
</footer>
</body>
</html>

<?php
$conn->close();
?>
