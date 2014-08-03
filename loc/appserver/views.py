from django.shortcuts import render_to_response,render
from django.http import HttpResponse
from django.contrib.auth import authenticate 
from django.contrib.auth import login as aulogin
from django.contrib.auth import logout as aulogout
from django.contrib.auth.models import User
from appserver.models import UserRegisterForm
import json
# Create your views here.

def login(request):
	if request.method == 'GET':
		return render_to_response('login.html')	
	username = request.POST['username']
	password = request.POST['password']
	user = authenticate(username=username, password=password)
	if user is not None:
		if user.is_active:
			aulogin(request, user)
			# Redirect to a success page.
			data = {'code':200}
			return HttpResponse(json.dumps(data,ensure_ascii = False))
		else:
			data = {'code': 119}
			return HttpResponse(json.dumps(data))
		 # Return a 'disabled account' error message
	else:
   		data = {'code':120}
		return HttpResponse(json.dumps(data))
	  # Return an 'invalid login' error message.


def logout(request):
	if request.method == 'GET':
		return render_to_response('logout.html')
	
	if not request.user.is_authenticated():
		return render_to_response('login.html')
	aulogout(request)
	data = {'code':200}
	return HttpResponse(json.dumps(data))

def registe(request):
	if request.method == 'GET':
		return render(request,'registe.html')
	form = UserRegisterForm(data = request.POST)

	if form.is_valid():
		new_user = User.objects.create_user(request.POST['username'],request.POST['email'],request.POST['password'])
		new_user.save()
		data = {'code':200}
		return HttpResponse(json.dumps(data))
	else:
		data = {'code':120}
		return HttpResponse(json.dumps(data))

