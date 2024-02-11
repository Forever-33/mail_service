$(document).ready(function() {
        // Обработка отправки формы через AJAX для создания рассылки
        $('#newsletterForm').submit(function(e) {
            e.preventDefault(); // Отменяем стандартное действие отправки формы

            // Получаем данные из формы
            var formData = $(this).serialize();

            // Отправляем AJAX запрос на создание рассылки
            $.ajax({
                type: 'POST',
                url: '/send_newsletter/', // URL для обработки запроса в Django
                data: formData,
                success: function(response) {
                    alert('Newsletter sent successfully!');
                    $('#newsletterModal').modal('hide'); // Закрываем модальное окно после успешной отправки
                },
                error: function(xhr, errmsg, err) {
                    alert('Error: ' + xhr.status + ': ' + xhr.responseText);
                }
            });
        });

        // Обработка отправки формы через AJAX для создания отложенной рассылки
        $('#scheduledNewsletterForm').submit(function(e) {
            e.preventDefault(); // Отменяем стандартное действие отправки формы

            // Получаем данные из формы
            var formData = $(this).serialize();

            // Отправляем AJAX запрос на создание отложенной рассылки
            $.ajax({
                type: 'POST',
                url: '/schedule_newsletter/', // URL для обработки запроса в Django
                data: formData,
                success: function(response) {
                    alert('Scheduled newsletter created successfully!');
                    $('#scheduledNewsletterModal').modal('hide'); // Закрываем модальное окно после успешного создания
                },
                error: function(xhr, errmsg, err) {
                    alert('Error: ' + xhr.status + ': ' + xhr.responseText);
                }
            });
        });
    });