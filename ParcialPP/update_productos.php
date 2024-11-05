<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Actualizar Producto</title>
</head>
<body>
    <h2>Actualizar Producto</h2>
    <form action="update_productos.php" method="post">
        <label for="id">ID del Producto:</label>
        <input type="number" name="id" required><br>

        <label for="nombre">Nuevo Nombre:</label>
        <input type="text" name="nombre"><br>

        <label for="descripcion">Nueva Descripción:</label>
        <textarea name="descripcion"></textarea><br>

        <label for="precio">Nuevo Precio:</label>
        <input type="number" name="precio" step="0.01"><br>

        <label for="stock">Nuevo Stock:</label>
        <input type="number" name="stock"><br>

        <button type="submit">Actualizar Producto</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = $_POST["id"];
        $nombre = $_POST["nombre"];
        $descripcion = $_POST["descripcion"];
        $precio = $_POST["precio"];
        $stock = $_POST["stock"];
        $conn = new mysqli("localhost", "root", "", "tienda_hardware");
        if ($conn->connect_error) {
            die("Conexión fallida: " . $conn->connect_error);
        }

        $sql = "UPDATE productos SET nombre = ?, descripcion = ?, precio = ?, stock = ? WHERE id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ssdii", $nombre, $descripcion, $precio, $stock, $id);

        if ($stmt->execute()) {
            echo "Producto actualizado correctamente.";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>