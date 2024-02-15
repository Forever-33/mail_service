from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.subscribers, name='subscribers'),
    url(r'^mailings/$', views.mailings, name='mailings'),
    url(r'^delayed_mailings/$', views.delayed_mailings, name='delayed_mailings'),
    # url(r'^tracking/pixel.gif/$', views.track_email_open, name='track_email_open'),
]

