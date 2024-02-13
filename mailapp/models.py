from __future__ import unicode_literals

import uuid

from django.db import models


class Subscribers(models.Model):
    objects = models.Manager()
    email = models.EmailField(max_length=255, blank=False, default="email")
    first_name = models.CharField(max_length=255, blank=False, default="first_name")
    last_name = models.CharField(max_length=255, blank=False, default="last_name")
    birthday = models.DateField(max_length=255, blank=False, default="birthday")

    def __str__(self):
        return self.email


class Mailings(models.Model):
    objects = models.Manager()
    theme = models.CharField(max_length=255, blank=False, default="theme")
    message = models.CharField(max_length=2000, blank=False, default="message")

    def __str__(self):
        return self.theme


class ScheduledMailing(models.Model):
    objects = models.Manager()
    subject = models.CharField(max_length=200)
    message_template = models.TextField(max_length=2000, blank=False)
    schedule_date = models.DateTimeField()
    created_at = models.DateTimeField(auto_now_add=True)
    identifier = models.UUIDField(unique=True, default=uuid.uuid4)

    def __str__(self):
        return str('delayed')

