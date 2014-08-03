"""
WSGI config for loc project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/howto/deployment/wsgi/
"""

import os
import sys
#import settings
#sys.path.append(settings.BASE_DIR)
#sys.path.append(os.path.join(settings.BASE_DIR,'media'))
#path = '/Users/apple/Documents/develop/djangoprojecties/loc/'
path = '/Applications/XAMPP/htdocs/www/loc/media/'
sys.path.append(path)
#sys.path.append(path + 'media/')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "loc.settings")

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
