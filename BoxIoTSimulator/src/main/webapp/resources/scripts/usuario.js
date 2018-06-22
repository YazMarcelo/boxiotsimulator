
var email = document.getElementById("email");

function validateEmail() {
    if (validateEmail(email.value)) {
        email.setCustomValidity("E-mail inválido");
    } else {
        email.setCustomValidity('');
    }
}

var password = document.getElementById("senha")
    , confirm_password = document.getElementById("confirm-senha");

function validatePassword() {
    if (password.value != confirm_password.value) {
        confirm_password.setCustomValidity("Senha e confirmar senha não coincidem!");
    } else {
        confirm_password.setCustomValidity('');
    }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}