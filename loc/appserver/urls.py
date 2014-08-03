from django.conf.urls import patterns, include, url
from django.contrib import admin
from appserver.views import *
from appserver.locView import pushPost,pushComment,getNearPosts,loadMorePosts,refreshMyTrace,getMyHistory
from appserver.comView import getMyTrace
from django.conf import settings
from django.conf.urls.static import static

admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'loc.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^login', login),
	url(r'^registe', registe),
	url(r'^logout',logout),
	url(r'^pushPost',pushPost),
	url(r'^pushComment',pushComment),
	url(r'^getNearPost',getNearPosts),
	url(r'^loadMorePost',loadMorePosts),
	url(r'^getMyTrace', getMyTrace),
	url(r'^refreshMyTrace',refreshMyTrace),
	url(r'^getMyHistory', getMyHistory),
) + static(settings.MEDIA_URL,document_root = settings.MEDIA_ROOT)
