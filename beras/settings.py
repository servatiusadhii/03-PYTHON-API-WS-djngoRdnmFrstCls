"""
Django settings for beras project.
Compatible with XAMPP (MariaDB 10.4)
"""

from pathlib import Path
from django.db import connections
from django.db.utils import OperationalError
import dj_database_url
import os
import pymysql
pymysql.install_as_MySQLdb()


# =============================
# BASE DIR
# =============================
BASE_DIR = Path(__file__).resolve().parent.parent


# =============================
# SECURITY
# =============================
SECRET_KEY = 'django-insecure-ganti-key-ini-jika-production'
DEBUG = True
ALLOWED_HOSTS = ['*']


# =============================
# APPLICATIONS
# =============================
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    
    'data', 

]


# =============================
# MIDDLEWARE
# =============================
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware', # Tambahkan baris ini di sini!
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

# =============================
# URL & WSGI
# =============================
ROOT_URLCONF = 'beras.urls'

WSGI_APPLICATION = 'beras.wsgi.application'


# =============================
# TEMPLATES
# =============================
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            BASE_DIR / 'templates',   # LANDING PAGE
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

# =============================
# DATABASE CONFIGURATION
# =============================
# Deteksi otomatis: Pakai MySQL Railway jika ada, kalau tidak pakai MariaDB XAMPP lokal
DATABASE_URL = os.environ.get('MYSQL_URL')

if DATABASE_URL:
    DATABASES = {
        'default': dj_database_url.config(
            default=DATABASE_URL,
            conn_max_age=0,  # Ubah ke 0 untuk menghindari koneksi basi
            conn_health_checks=True,
        )
    }
    # Tambahkan OPTIONS ini untuk mencegah 'Lost connection'
    DATABASES['default']['OPTIONS'] = {
        'connect_timeout': 60,
        'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        'charset': 'utf8mb4',
    }
    # Paksa Engine ke MySQL
    DATABASES['default']['ENGINE'] = 'django.db.backends.mysql'

# =============================
# STATIC FILES (WhiteNoise)
# =============================
STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR / 'static']
STATIC_ROOT = BASE_DIR / 'staticfiles'

# WhiteNoise: Kompres file statis agar loading web lebih cepat
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'

# =============================
# INTERNATIONALIZATION
# =============================
LANGUAGE_CODE = 'id'
TIME_ZONE = 'Asia/Jakarta'
USE_I18N = True
USE_TZ = True

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'


# =============================
# PASSWORD VALIDATION
# =============================
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# =============================
# INTERNATIONALIZATION
# =============================
LANGUAGE_CODE = 'id'
TIME_ZONE = 'Asia/Jakarta'
USE_I18N = True
USE_TZ = True


# =============================
# STATIC FILES
# =============================
STATIC_URL = '/static/'
STATICFILES_DIRS = [
    BASE_DIR / 'static',
]


# =============================
# DEFAULT PRIMARY KEY
# =============================
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'
