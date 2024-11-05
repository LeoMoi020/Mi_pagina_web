<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consultar Stock</title>
</head>
<body>
    <h2>Consultar Stock de Producto</h2>
    <form action="select_productos.php" method="post">
        <label for="product_id">ID del Producto:</label>
        <input type="number" name="product_id" required>
        <button type="submit">Consultar</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $product_id = $_POST["product_id"];
        $conn = new mysqli("localhost", "root", "", "tienda_hardware");
        if ($conn->connect_error) die("Conexión fallida: " . $conn->connect_error);

        $sql = "SELECT stock FROM productos WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $product_id);
        $stmt->execute();
        $stmt->bind_result($stock);
        if ($stmt->fetch()) echo "Stock: " . $stock;
        else echo "Producto no encontrado.";

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>