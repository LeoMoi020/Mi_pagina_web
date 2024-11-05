document.getElementById('registroForm').onsubmit = function(event) {
    event.preventDefault(); 

    var contraseña = document.getElementById('contraseña').value;
    var confirmarContraseña = document.getElementById('confirmar_contraseña').value;
    var notificacion = document.getElementById('notificacion');

    if (contraseña !== confirmarContraseña) {
        notificacion.innerText = "Las contraseñas no coinciden.";
        notificacion.classList.add('error', 'mostrar');
        setTimeout(function() {
            notificacion.classList.remove('mostrar');
        }, 3000); 
        return;
    }

    notificacion.innerText = "Registro completado";
    notificacion.classList.remove('error');
    notificacion.classList.add('mostrar');

    setTimeout(function() {
        notificacion.classList.remove('mostrar');
    }, 3000); 


    document.getElementById('registroForm').reset();
};


document.getElementById('mostrar_contraseña').onclick = function() {
    var contraseñaInput = document.getElementById('contraseña');
    contraseñaInput.type = this.checked ? 'text' : 'password';
};

document.getElementById('mostrar_confirmar_contraseña').onclick = function() {
    var confirmarContraseñaInput = document.getElementById('confirmar_contraseña');
    confirmarContraseñaInput.type = this.checked ? 'text' : 'password';
};