# -*- coding: utf-8 -*-
# Generated by Django 1.9.9 on 2024-02-15 16:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mailapp', '0005_emailopenevent'),
    ]

    operations = [
        migrations.AddField(
            model_name='emailopenevent',
            name='read',
            field=models.CharField(default='Read', max_length=200),
        ),
    ]