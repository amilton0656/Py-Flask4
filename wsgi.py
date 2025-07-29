import sys
import os

sys.path.insert(0, '/var/www/Py-Flask4')
os.environ['FLASK_ENV'] = 'production'

from app import app as application
