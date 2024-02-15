# coding=utf-8
# -*- coding: utf-8 -*-

from __future__ import absolute_import, unicode_literals
import os
from celery import Celery
from celery.schedules import crontab

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'mail_service.settings')

app = Celery('mail_service')

app.autodiscover_tasks(['mailapp'])

app.conf.broker_url = 'amqp://guest:guest@localhost//'

app.config_from_object('django.conf:settings')

app.config_from_object('django.conf:settings')

app.conf.beat_schedule = {
    'send-scheduled-mails': {
        'task': 'mailapp.tasks.send_scheduled_mail',
        'schedule': crontab(minute='*/1'),
    },
}









