# -*- coding: utf-8 -*-
from django.contrib.auth import authenticate
from django.shortcuts import render
from django.http     import HttpResponse
from appserver.models import Location,LocPost,PostComment
from django.contrib.auth.models import User
import json
from datetime import datetime as dt

def formPost(request):
	data = request.POST
	username = request.user.username
	user = User.objects.filter(username = username).all()[0]
	assert user != None
	descript = 'default'
	if 'loc_descript' in data.keys():
		descript = data['loc_descript']
	loc = None
	loc = Location.objects.filter(latitude = data['lat'],longtitude = data['lnt']).all()
	if len(loc) == 0:
		loc = Location.objects.create(loc_descrip = descript,latitude = data['lat'],longtitude = data['lnt'])
	else:
		loc = loc[0]
	assert loc != None
	image = 'no_image'
	if 'image' in request.FILES.keys():
		image = request.FILES['image']
	post = LocPost(image = image,post_text = data['post_text']) 
	post.save()
	post.location.add(loc)
	post.user.add(user)	
	return post
	
def pushPost(request):
	if request.method == 'GET':
		return render(request,'pushPost.html')
	#print request.body
	if request.user.is_authenticated():
		post = formPost(request)
		post.save()
		data = {'code':200}
		return HttpResponse(json.dumps(data))
	else:
		data = {'code':999}
		return HttpResponse(json.dumps(data))	

def formComment(request):
	username = request.user.username
	comment_user = User.objects.filter(username = username).all()[0]
	assert comment_user != None
	comment_text = request.POST['comment_text']
	postid = request.POST['postid']
	comment_post = LocPost.objects.filter(id = postid).all()
	assert comment_post != None
	comment_post = comment_post[0]
	comment = PostComment.objects.create(comment_text = comment_text,comment_post = comment_post)
	comment.comment_user.add(comment_user)
	return comment

def pushComment(request):
	if request.method == 'GET':
		return render(request,'pushComment.html')
	if request.user.is_authenticated():
		comment = formComment(request)
		comment.save()
		data = {'code':200}
		return HttpResponse(json.dumps(data))
	else:
		data = {'code':999}
		return HttpResponse(json.dumps(data))

