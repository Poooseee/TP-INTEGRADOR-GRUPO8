function confirmarAltaMedico() {
    var confirmacion = confirm("¿Estas seguro que quieres dar de Alta?");
    document.getElementById('hfConfirmar').value = confirmacion ? 'true' : 'false';
    return confirmacion;
}
function alertaMedicoCorrecta() {
    alert("Se agrego Exitosamente a la Base de Datos");
}
function alertaMedicoErronea() { }
    alert("Hubo un Problema al agregar en la Base de Datos");
}