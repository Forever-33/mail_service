# -*- coding: utf-8 -*-
from django.http import JsonResponse
from django.shortcuts import render
from .models import Subscribers, Mailings, ScheduledMailing
from django.core.mail import send_mass_mail
from django.conf import settings
from django.utils import timezone
from .tasks import send_scheduled_mail
import uuid
from celery import Celery


def subscribers(request):
    subscribers_p = Subscribers.objects.all()
    return render(request, 'subscribers.html', {
        'subscribers': subscribers_p,
    })


def mailings(request):
    mailings_p = Mailings.objects.all()
    subscribers_p = Subscribers.objects.all()
    if request.method == 'POST':
        subject = request.POST.get('subject')
        message_template = request.POST.get('message')

        mailing_instance = Mailings.objects.create(theme=subject, message=message_template)
        mailing_instance.save()

        print("Отправка писем...")

        message_data = []
        for subscriber in subscribers_p:
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
            return JsonResponse({'success': True})
        except Exception as e:
            print("Ошибка при отправке писем: {0}".format(e))
            return JsonResponse({'success': False, 'error': str(e)})

    return render(request, 'mailings.html', {
        'mailings': mailings_p,
        'subscribers': subscribers_p,
    })


app = Celery()


def delayed_mailings(request):
    mailings_p = Mailings.objects.all()
    subscribers_p = Subscribers.objects.all()
    if request.method == 'POST':
        subject = request.POST.get('subject')
        message_template = request.POST.get('message')
        schedule_date = timezone.datetime.strptime(request.POST.get('schedule_date'), '%Y-%m-%dT%H:%M')

        # Создаем отложенное письмо
        scheduled_mailing = ScheduledMailing.objects.create(
            subject=subject,
            message_template=message_template,
            schedule_date=schedule_date,
            identifier=str(uuid.uuid4())  # Создание случайного уникального идентификатора
        )
        scheduled_mailing.save()

        # Вычисляем временную метку для выполнения задачи
        eta_time = scheduled_mailing.schedule_date
        eta_time -= timezone.timedelta(hours=3)

        # Запускаем задачу отправки отложенных писем с использованием eta
        send_scheduled_mail.apply_async(args=[subject, message_template], eta=eta_time)
        return JsonResponse({'success': True})

    return render(request, 'delayed_mailings.html', {
        'subscribers': subscribers_p,
        'mailings': mailings_p,
    })




