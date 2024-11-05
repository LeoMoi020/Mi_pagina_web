<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Insertar Producto</title>
</head>
<body>
    <h2>Agregar Producto</h2>
    <form action="insert_productos.php" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" name="nombre" required><br>

        <label for="descripcion">Descripción:</label>
        <textarea name="descripcion" required></textarea><br>

        <label for="precio">Precio:</label>
        <input type="number" name="precio" required step="0.01"><br>

        <label for="stock">Stock:</label>
        <input type="number" name="stock" required><br>

        <button type="submit">Agregar Producto</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nombre = $_POST["nombre"];
        $descripcion = $_POST["descripcion"];
        $precio = $_POST["precio"];
        $stock = $_POST["stock"];
        $conn = new mysqli("localhost", "root", "", "tienda_hardware");
        if ($conn->connect_error) {
            die("Conexión fallida: " . $conn->connect_error);
        }

        $sql = "INSERT INTO productos (nombre, descripcion, precio, stock) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssdi", $nombre, $descripcion, $precio, $stock);

        if ($stmt->execute()) {
            echo "Producto agregado correctamente.";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>