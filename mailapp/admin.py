from django.contrib import admin
from .models import Subscribers, Mailings, ScheduledMailing

# Register your models here.
admin.site.register([Subscribers, Mailings, ScheduledMailing])
