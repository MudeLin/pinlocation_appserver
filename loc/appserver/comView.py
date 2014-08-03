
from django.shortcuts import render
from django.http import HttpResponse
import json

def getMyTrace(request):
	if request.method() == "GET":	
		return render(request,"getMyTrace.html")
	else:
		return HttpResponse("hello")	
