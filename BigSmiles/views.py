from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import UserProfile
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect
from django.contrib import messages

def index(response):
    return render(response, "BigSmiles/index.html", {})

def home(response):
    return render (response, "BigSmiles/home.html", {})


def register(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('login')
    else:
        form = UserCreationForm()
    return render(request, 'BigSmiles/register.html', {'form': form})

def user_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            # Add user information to session
            request.session['user_id'] = user.id
            request.session['username'] = user.username
            messages.success(request, 'You have been logged in successfully.')
            return redirect('home')
        else:
            messages.error(request, 'Invalid credentials. Please try again.')
            return render(request, 'BigSmiles/login.html')
    else:
        return render(request, 'BigSmiles/login.html')
def user_logout(request):
    logout(request)
    return redirect('index') 

def services(response):
     return render (response, "BigSmiles/services.html", {})

def about (response):
    return render (response, "BigSmiles/about.html", {})
