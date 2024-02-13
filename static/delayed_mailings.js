document.addEventListener('DOMContentLoaded', function () {
    var form = document.getElementById('scheduledNewsletterModal');
    var messageContainer = document.getElementById('messageContainer2');

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        var formData = new FormData(form);
        console.log("FormData:", formData);

        fetch('/delayed_mailings/', {
            method: 'POST',
            body: formData,
            headers: {
                'X-Requested-With': 'XMLHttpRequest',
                'Accept': 'application/json',
            }
        })
        .then(response => response.json())
        .then(data => {
            var notification = document.createElement('div');
            notification.className = 'notification';

            if (data.success) {
                notification.classList.add('success');
                notification.innerHTML = 'Сообщение успешно отправлено!<br><br>';
                form.reset();
            } else {
                notification.classList.add('error');
                notification.innerHTML = 'Ошибка при отправке сообщения: ' + data.error + '<br>';
            }

            messageContainer.innerHTML = '';
            messageContainer.appendChild(notification);

            setTimeout(function () {
                messageContainer.innerHTML = '';
            }, 10000);
        })
        .catch(error => {
            var errorMessage = document.createElement('div');
            errorMessage.className = 'error-message';
            errorMessage.innerHTML = 'Произошла ошибка при отправке запроса<br>';

            messageContainer.innerHTML = '';
            messageContainer.appendChild(errorMessage);

            setTimeout(function () {
                messageContainer.innerHTML = '';
            }, 10000);

            console.error('Error:', error);
        });
    });
});
