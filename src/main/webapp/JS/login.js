document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('login-form').addEventListener('submit', function (event) {
        var recaptchaResponse = grecaptcha.getResponse();
        if (recaptchaResponse.length === 0) {
            alert('Por favor, complete el reCAPTCHA.');
            event.preventDefault(); 
        }
    });
});