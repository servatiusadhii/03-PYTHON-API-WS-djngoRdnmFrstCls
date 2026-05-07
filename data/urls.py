from django.urls import path
from .views import download_template_kelola_data
from django.shortcuts import redirect
from .views import (
    login_view,
    dashboard,
    supplier,
    supplier_create,
    supplier_detail,
    supplier_edit,
    supplier_delete,
    kelola_data,
    kelola_data_create,
    kelola_data_edit,
    kelola_data_delete,
    dataset,
    prediksi,
    proses_prediksi,
    hasil_prediksi,
    hasil,
    logout_view,
    export_kelola_data_pdf,
    import_kelola_data_excel
)

urlpatterns = [
    path('', lambda request: redirect('login')),  # langsung ke login
    path('login/', login_view, name='login'),
    path('logout/', logout_view, name='logout'),
    path('dashboard/', dashboard, name='dashboard'),

    # Supplier
    path('supplier/', supplier, name='supplier'),
    path('supplier/tambah/', supplier_create, name='supplier_create'),
    path('supplier/<int:id>/', supplier_detail, name='supplier_detail'),
    path('supplier/<int:id>/edit/', supplier_edit, name='supplier_edit'),
    path('supplier/<int:id>/delete/', supplier_delete, name='supplier_delete'),

    # Kelola Data
    path('kelola-data/', kelola_data, name='kelola_data'),
    path('kelola-data/tambah/', kelola_data_create, name='kelola_data_create'),
    path('kelola-data/<int:id>/edit/', kelola_data_edit, name='kelola_data_edit'),
    path('kelola-data/<int:id>/delete/', kelola_data_delete, name='kelola_data_delete'),
    path('kelola-data/export/pdf/', export_kelola_data_pdf, name='export_kelola_data_pdf'),
    path('kelola-data/import/', import_kelola_data_excel, name='import_kelola_data_excel'),
    path('kelola-data/template/',download_template_kelola_data,name='download_template_kelola_data'),

    # Dataset
    path('dataset/', dataset, name='dataset'),

    # Prediksi
    path('prediksi/', prediksi, name='prediksi'),
    path('proses-prediksi/', proses_prediksi, name='proses_prediksi'),

    # Hasil Prediksi
    path('hasil-prediksi/', hasil_prediksi, name='hasil_prediksi'),
    path('hasil/', hasil, name='hasil'),
    
]