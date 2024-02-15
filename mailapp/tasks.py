# coding=utf-8
from django.utils import timezone
from celery import shared_task
from mail_service import settings
from .models import ScheduledMailing, Subscribers
from django.core.mail import send_mass_mail
import uuid


@shared_task
def send_scheduled_mail(subject, message_template):
    now = timezone.now()
    scheduled_mailings = ScheduledMailing.objects.filter(schedule_date__lte=now)

    for scheduled_mailing in scheduled_mailings:
        subscribers = Subscribers.objects.all()
        message_data = []

        for subscriber in subscribers:
            personalized_message = u"Добрый день {first_name} {last_name} \nДата рождения: {birthday} \nСообщение: {message}".format(
                first_name=subscriber.first_name,
                last_name=subscriber.last_name,
                birthday=subscriber.birthday,
                message=message_template
            ).encode('utf-8')

            message_data.append((subject, personalized_message, settings.EMAIL_HOST_USER, [subscriber.email]))

        try:
            send_mass_mail(message_data, fail_silently=False)
            print("Письма успешно отправлены")
        except Exception as e:
            print("Ошибка при отправке писем: {0}".format(e))






