from django.contrib import admin
from .models import Subscribers, Mailings, ScheduledMailing, EmailOpenEvent

# Register your models here.
admin.site.register([Subscribers, Mailings, ScheduledMailing, EmailOpenEvent])
