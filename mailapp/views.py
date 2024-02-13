# -*- coding: utf-8 -*-
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404
from .models import Subscribers, Mailings
from django.core.mail import send_mass_mail, send_mail
from django.conf import settings


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

        # Создаем экземпляр модели Mailings и сохраняем его в базе данных
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
            # Отправляем письма
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


def delayed_mailings(request):
    mailings_p = Mailings.objects.all()
    subscribers_p = Subscribers.objects.all()
    return render(request, 'delayed_mailings.html', {
        'subscribers': subscribers_p,
        'mailings': mailings_p,
    })


