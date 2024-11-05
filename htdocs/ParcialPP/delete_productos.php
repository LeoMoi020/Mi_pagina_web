<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Producto</title>
</head>
<body>
    <h2>Eliminar Producto</h2>
    <form action="delete_productos.php" method="post">
        <label for="product_id">ID del Producto:</label>
        <input type="number" name="product_id" required>
        <button type="submit">Eliminar</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $product_id = $_POST["product_id"];
        $conn = new mysqli("localhost", "root", "", "tienda_hardware");
        if ($conn->connect_error) die("Conexión fallida: " . $conn->connect_error);

        $sql = "DELETE FROM productos WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $product_id);
        if ($stmt->execute()) echo "Producto eliminado correctamente.";
        else echo "Error: " . $stmt->error;

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>