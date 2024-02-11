from django.shortcuts import render
from .models import Subscribers


def subscribers(request):
    subscribers_p = Subscribers.objects.all()
    return render(request, 'subscribers.html', {
        'subscribers': subscribers_p,
    })


def mailings(request):
    subscribers_p = Subscribers.objects.all()
    return render(request, 'mailings.html', {
        'subscribers': subscribers_p,
    })


def delayed_mailings(request):
    subscribers_p = Subscribers.objects.all()
    return render(request, 'delayed_mailings.html', {
        'subscribers': subscribers_p,
    })