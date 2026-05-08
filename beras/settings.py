"""
Django settings for beras project.
Compatible with XAMPP (MariaDB 10.4)
"""

from pathlib import Path
from django.db import connections
from django.db.utils import OperationalError
import dj_database_url
import os
from dotenv import load_dotenv


# =============================
# BASE DIR
# =============================
BASE_DIR = Path(__file__).resolve().parent.parent


# =============================
# SECURITY
# =============================
SECRET_KEY = 'django-insecure-ganti-key-ini-jika-production'
DEBUG = False
ALLOWED_HOSTS = ['*']
CSRF_TRUSTED_ORIGINS = [
    "https://03-python-api-ws-djngordnmfrstcls-production.up.railway.app",
]


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
load_dotenv()

DATABASE_URL = os.getenv("MYSQL_URL")

DATABASES = {
    'default': dj_database_url.parse(
        DATABASE_URL,
        conn_max_age=600
    )
}

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
