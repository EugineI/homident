from django.urls import path
from .import views

urlpatterns = [
    path("", views.index, name="index"),
    path("home/", views.home, name="home"),
    path('register/', views.register, name='register'),
    path('login/', views.user_login, name='login'),
    path('about/', views.about, name='about'),
    path('services/', views.services, name='services'),
]
