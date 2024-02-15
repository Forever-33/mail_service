# -*- coding: utf-8 -*-
# Generated by Django 1.9.9 on 2024-02-15 14:51
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mailapp', '0004_auto_20240214_0126'),
    ]

    operations = [
        migrations.CreateModel(
            name='EmailOpenEvent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subscriber_id', models.IntegerField()),
                ('mailing_id', models.IntegerField()),
                ('opened_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]