from __future__ import unicode_literals

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
