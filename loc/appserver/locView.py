# -*- coding: utf-8 -*-
from django.contrib.auth import authenticate
from django.shortcuts import render
from django.http     import HttpResponse
from appserver.models import Location,LocPost,PostComment
from django.contrib.auth.models import User
import json
from datetime import datetime as dt
from django.db.models import Q
def formPost(request):
	data = request.POST
	username = request.user.username
	user = User.objects.filter(username = username).all()[0]
	assert user != None
	descript = 'default'
	if 'loc_descript' in data.keys():
		descript = data['loc_descript']
	loc = None
	loc = Location.objects.filter(Q(latitude = data['lat'],longtitude = data['lnt'])|Q(loc_descrip = descript)).all()
	if len(loc) == 0:
		loc = Location.objects.create(loc_descrip = descript,latitude = data['lat'],longtitude = data['lnt'])
	else:
		loc = loc[0]
	assert loc != None
	image = 'no_image'
	if 'image' in request.FILES.keys():
		image = request.FILES['image']
	if image == "":
		image = "no_image"
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
		return HttpResponse(json.dumps(data,ensure_ascii = False))
	else:
		data = {'code':999}
		print data
		return HttpResponse(json.dumps(data,ensure_ascii = False))	

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
		return HttpResponse(json.dumps(data,ensure_ascii = False))
	else:
		data = {'code':999}
		return HttpResponse(json.dumps(data,ensure_ascii = False))

def	withinDistance(c_alt,c_lnt,t_alt,t_lnt, dist = 0.01):
	return abs(float(c_alt) - t_alt) + abs(float(c_lnt) - t_lnt) <= dist

def formPostsToJSON(posts,c_alt,c_lnt,max_count):
	postslist = []
	for i in posts:
		if len(postslist) >= max_count:
			break
		curdict = dict()
		curdict['postid'] = i.id
		curdict['post_time'] = str(i.post_time)
		curdict['image'] = str(i.image)
		curdict['user'] = i.user.all()[0].username
		t_alt = i.location.all()[0].latitude
		t_lnt = i.location.all()[0].longtitude
		t_loc_descript = i.location.all()[0].loc_descrip
		#if not withinDistance(c_alt,c_lnt,t_alt,t_lnt):
		#	continue
		location = {"lnt":t_lnt,"lat":t_alt,"loc_descript":t_loc_descript}	
		curdict['location'] = location
		curdict['post_text'] = i.post_text
		comslist = []
		comms = PostComment.objects.filter(comment_post = i.id)
		for com in comms:
			comdict = dict()
			comdict['comment_text'] = com.comment_text
			comdict['comment_time'] = str(com.comment_time)
			comdict['comment_user'] = com.comment_user.all()[0].username
			comslist.append(comdict)
		curdict['comment_length'] = len(comslist)
		curdict['comments'] = comslist

		postslist.append(curdict)
	return postslist

def getTraces(userid):
	trace = LocPost.objects.filter(user__id = userid).values('location__id','location__longtitude','location__latitude').distinct()
	traceSet = set()
	locs = Location.objects.all()
	for i in locs:	
		for j in trace:
			if i.id == j['location__id']:
				traceSet.add(i.id)
			elif  withinDistance(i.latitude,i.longtitude,j['location__latitude'],j['location__longtitude']):
				traceSet.add(i.id)
	return traceSet

def getNearNodes(alt,lnt,locs):	
	nearNodes = set()
	for i in locs:
		if  withinDistance(alt,lnt,i.latitude,i.longtitude):
			nearNodes.add(i.id)
	return nearNodes

def getPosts(userid,alt,lnt,max_count,last_postid):
	if alt == None or lnt == None:
		return []
	if alt == '-1' or lnt == '-1':
		trace = getTraces(userid)
	else:
		locs = Location.objects.all()
		trace = getNearNodes(alt,lnt,locs)
	posts = LocPost.objects.filter(id__gt = last_postid,location__id__in = trace).reverse()
	
	return formPostsToJSON(posts,alt,lnt,max_count)

def getNearPosts(request):
	if request.method == 'GET':
		return render(request,'getNearPosts.html')
	#if request.user.is_authenticated():
	if True:
		lnt = request.POST['lnt']
		alt = request.POST['lat']
		userid = request.user.id
		count = request.POST['max_count']
		last_postid = request.POST['last_postid']
		postslist = getPosts(userid,alt,lnt,count,last_postid)
		data = {'code':200,
				'post_length':len(postslist),
				'result':postslist}
		return HttpResponse(json.dumps(data,ensure_ascii = False))
	else:
		data = {'code':999}
		return HttpResponse(json.dumps(data,ensure_ascii = False))

def morePosts(userid,alt,lnt,max_count,smallist_postid):
	if lnt == '-1' or alt == '-1':
		trace = getTraces(userid)
	else:
		locs = Location.objects.all()
		trace = getNearNodes(alt,lnt,locs)
	posts = LocPost.objects.filter(id__lt = smallist_postid,location__id__in = trace)
	return formPostsToJSON(posts,alt,lnt,max_count)

def loadMorePosts(request):
	if request.method == 'GET':
		return render(request,'loadMorePosts.html')
	#if request.user.is_authenticated():
	if True:
		lnt   = request.POST['lnt']
		alt   = request.POST['lat']
		count = request.POST['max_count']
		userid = request.user.id
		smallist_postid = request.POST['smallist_postid']
		postslist = morePosts(userid,alt,lnt,count,smallist_postid)
		data = {'code':200,
				'post_length':len(postslist),
				'result':postslist}
		return HttpResponse(json.dumps(data,ensure_ascii = False))
	else:
		data = {'code':999}
		return HttpResponse(json.dumps(data,ensure_ascii = False))

def mergeFootPrint(footprints):
	#TODO: write some code to merge the footprint
	return footprints

def get_trace_updates(userid, count, last_postid,posts_per_node = 2):
	trace_update = {}
	footprints = LocPost.objects.filter(user__id = userid).values('location__id','location__longtitude','location__latitude','location__loc_descrip').reverse()
	footprints = mergeFootPrint(footprints)
	c = 0
	for fp in footprints:
		if c >= count:
			break
		fpNewposts = getPosts(userid,fp['location__latitude'],fp['location__longtitude'],posts_per_node,last_postid)	
		if len(fpNewposts) >0:
			trace_update[fp['location__loc_descrip']] = fpNewposts	
			c += 1
	return trace_update

def refreshMyTrace(request):
	if request.method == 'GET':
		return render(request,'refreshMyTrace.html')
	else:
		userid = request.user.id
		count = request.POST['max_count']
		last_postid = request.POST['last_postid']
		trace_update = get_trace_updates(userid,count, last_postid)
		data = {'code':200,
				'trace_lenth': len(trace_update),
				
				'result':trace_update
				}
		#print("serve done")
		return HttpResponse(json.dumps(data,ensure_ascii = False))

def getMyHistory(request):
	if request.method == 'GET':
		return render(request,'getMyHistory.html')
	elif request.method == 'POST':
		userid = request.user.id

		path = LocPost.objects.filter(user__id = userid).values('location__longtitude','location__latitude').distinct()
		pathSet = set()
		for i in path:
			key = (i["location__longtitude"],i["location__latitude"])
			if key not in pathSet:
				pathSet.add(key)
				
		place_count = len(pathSet)
		
		post_count = len(LocPost.objects.filter(user__id = userid))
		data = {
			'code':200,
			'history':{
				'places':place_count,
				'posts': post_count,
				'comment':0
				}
			}
		return HttpResponse(json.dumps(data,ensure_ascii = False))
