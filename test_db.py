import os
import sys
import django

# Setup lingkungan Django
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'beras.settings')
django.setup()

from django.db import connection
from django.db.utils import OperationalError

def test_koneksi():
    print("\n" + "="*30)
    print("🚀 MEMULAI TESTING KONEKSI DB")
    print("="*30)
    
    # Cek Environment Variable
    db_url = os.environ.get('MYSQL_URL')
    if db_url:
        print(f"✅ Variabel MYSQL_URL ditemukan")
    else:
        print(f"❌ Variabel MYSQL_URL TIDAK ADA!")

    try:
        # Mencoba melakukan koneksi
        connection.ensure_connection()
        with connection.cursor() as cursor:
            cursor.execute("SELECT 1")
            row = cursor.fetchone()
        print("✅ DATABASE STATUS: TERKONEKSI (OK)")
        print(f"📊 Test Query (SELECT 1): {row}")
    except OperationalError as e:
        print("❌ DATABASE STATUS: GAGAL KONEK!")
        print(f"⚠️ Error Detail: {e}")
    except Exception as e:
        print(f"⚠️ Terjadi Kesalahan Lain: {e}")
    
    print("="*30 + "\n")

if __name__ == "__main__":
    test_koneksi()