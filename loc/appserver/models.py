from django.db import models
from django.contrib.auth.models import User
from django.forms import ModelForm
from django.contrib import admin
from datetime import datetime 
from loc.settings import MEDIA_ROOT
import uuid
# Create your models here.
class UserRegisterForm(ModelForm):
	class Meta:
		model = User
		fields = ['username','password','email']
	
class Location(models.Model):
	loc_descrip  = models.CharField(max_length = 200)
	longtitude  = models.FloatField()
	latitude    = models.FloatField()
	def __unicode__(self):
		return self.loc_descrip

def get_file_path(instance,filename):
	ext = filename.split('.')[-1]
	filename = "%s.%s" % (str(uuid.uuid4()),ext)
	return 'upload_images/'+filename


class LocPost(models.Model):
	location = models.ManyToManyField(Location)
	image    = models.ImageField(upload_to=get_file_path,blank = True)
	post_text = models.TextField()
	post_time = models.DateTimeField(editable = False)
	user     = models.ManyToManyField(User)
	class Meta:
		ordering = ['post_time']
	def __unicode__(self):
		return self.post_text
	def save(self,*args,**kwargs):
		if not self.id:
			self.post_time = datetime.now()
		return super(LocPost,self).save(*args,**kwargs)

class PostComment(models.Model):
	comment_post = models.ForeignKey(LocPost)
	comment_text = models.TextField()
	comment_time = models.DateTimeField(auto_now_add = True)
	comment_user = models.ManyToManyField(User)
	def save(self,*args,**kwargs):
		if not self.id:
			self.comment_time = datetime.now()
		return super(PostComment,self).save(*args,**kwargs)
	def __unicode__(self):
		return self.comment_text

admin.site.register(LocPost)
admin.site.register(Location)
admin.site.register(PostComment)

