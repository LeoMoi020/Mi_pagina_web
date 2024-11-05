let cart = [];

function Añadir(productName, productPrice) {
    const product = cart.find(item => item.name === productName);
    if (product) {
        product.quantity++;
    } else {
        cart.push({ name: productName, price: productPrice, quantity: 1 });
    }
    actualizarCarrito();
}

function actualizarCarrito() {
    const CarritoLink = document.getElementById('carrito-link');
    CarritoLink.textContent = `Carrito (${cart.length})`;
    localStorage.setItem('cart', JSON.stringify(cart));
}

function cargarCarrito() {
    const almacenadoCarrito = localStorage.getItem('cart');
    if (almacenadoCarrito) {
        cart = JSON.parse(almacenadoCarrito);
        actualizarCarrito();
    }
}

function CarritoDeCompras() {
    const modal = document.getElementById('carrito-modal');
    const carritoItems = document.getElementById('productos-carrito');
    const precioTotal = document.getElementById('precio-total');

    if (modal.style.display === "block") {
        modal.style.display = "none";
    } else {
        carritoItems.innerHTML = '';
        let total = 0;
        cart.forEach(item => {
            total += item.price * item.quantity;
            carritoItems.innerHTML += `<p>${item.name} - ${item.quantity} x $${item.price}</p>`;
        });
        precioTotal.textContent = `Total: $${total}`;
        modal.style.display = "block";
    }
}

function FinalizarCompra() {
    alert('Compra realizada con éxito!');
    cart = [];
    actualizarCarrito();
    CarritoDeCompras();
}

function VaciarCarrito() {
    cart = [];
    actualizarCarrito();
    CarritoDeCompras(); 
}

document.addEventListener('DOMContentLoaded', cargarCarrito);