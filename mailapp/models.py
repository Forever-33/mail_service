from __future__ import unicode_literals

from django.db import models

# Create your models here.


class Subscribers(models.Model):
    objects = models.Manager()
    email = models.EmailField(max_length=255, blank=False, default="email")
    first_name = models.CharField(max_length=255, blank=False, default="first_name")
    last_name = models.CharField(max_length=255, blank=False, default="last_name")
    birthday = models.DateField(max_length=255, blank=False, default="birthday")

    def __str__(self):
        return self.email
