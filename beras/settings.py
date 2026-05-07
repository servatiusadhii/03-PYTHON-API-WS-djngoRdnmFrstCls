"""
Django settings for beras project.
Compatible with XAMPP (MariaDB 10.4)
"""

from pathlib import Path
import dj_database_url

# =============================
# BASE DIR
# =============================
BASE_DIR = Path(__file__).resolve().parent.parent


# =============================
# SECURITY
# =============================
SECRET_KEY = 'django-insecure-ganti-key-ini-jika-production'
DEBUG = True
ALLOWED_HOSTS = []


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
# DATABASE (XAMPP / MariaDB 10.4)
# =============================
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.mysql',
#         'NAME': 'db_beras',
#         'USER': 'root',
#         'PASSWORD': '',
#         'HOST': 'localhost',
#         'PORT': '3306',
#         'OPTIONS': {
#             'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
#         },
#     }
# }
DATABASES = {
    'default': dj_database_url.config(
        # Mengambil dari variabel MYSQL_URL di Railway
        default=os.environ.get('MYSQL_URL') or 'sqlite:///db.sqlite3',
        conn_max_age=600
    )
}


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
