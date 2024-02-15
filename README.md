## Небольшой сервис отправки имейл рассылок на Python 2.7 / Django 1.9.9 / Celery / Rabbitmq / Postgresql / Ajax / cdn bootstrap и jquery /
### install packages on requirments.txt
### Не забудьте указать свои параметры в созданном вами .env (пример находится в .env.example) (Использование базы данных postgres, smtp протокола yandex почты и ее данных)
###
#### Вам потребуется скачать postgress:
##### в моем случае командой на macos через homebrew - 
##### brew install postgresql@14
##### запустить командой:
##### brew services start postgresql@14 
##### и создать базу данных командой:
##### createdb "ваше_имя_бд" -U "ваше_имя_пользователя"
###
#### Вам потребуется скачать Rabbitmq:
##### в моем случае командой на macos через homebrew - 
##### brew install rabbitmq
##### запустить командой:
##### brew services start rabbitmq 
##### и создать базу данных командой:
##### настройка стандартного хоста находится в celery.py ('amqp://guest:guest@localhost//') обычно это порт 5672
###
#### Вам потребуется скачать yandex почта и обязательно настроить ее для пользование smtp:
<p align="center">
  <img src="./image_md/yandex_1.png" alt="yandex_1.png" width="600">
</p>

#### И создать пароль приложения, который будет спользоваться в файле .env

<p align="center">
  <img src="./image_md/yandex_2.png" alt="yandex_1.png" width="600">
</p>

#### Соответсвенно для запуска потребуется две команды для запуска приложения:
#### В одном терминале
#### python manage.py runserver
#### В другом терминале
#### celery -A mail_service worker -l info

# Возможности сервиса:
1. Отправка рассылок с использованием html макета и списка подписчиков.
2. Для создания рассылки использовать ajax запрос. Форма для создания рассылки заполняется в модальном окне. Использовать библиотеки: jquery, bootstrap.
3. Отправка отложенных рассылок.
4. Использование переменных в макете рассылки. (Пример: имя, фамилия, день рождения из списка подписчиков)
5. Отложенные отправки реализовать при помощи Celery. 

<p align="center">
  <img src="./image_md/SUB.png" alt="yandex_1.png" width="600">
</p>

<p align="center">
  <img src="./image_md/declared_mailing.png" alt="yandex_1.png" width="600">
</p>

<p align="center">
  <img src="./image_md/mailings.png" alt="yandex_1.png" width="600">
</p>

<p align="center">
  <img src="./image_md/declared_mailing_terminal.png" alt="yandex_1.png" width="600">
</p>

<p align="center">
  <img src="./image_md/pochta_1.jpg" alt="yandex_1.png" width="200">
</p>
<p align="center">
  <img src="./image_md/pochta_2.jpg" alt="yandex_1.png" width="200">
</p>