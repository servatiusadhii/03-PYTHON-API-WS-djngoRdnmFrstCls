from django.db import models

JENIS_BERAS_TETAP = "Beras Patin"

class Supplier(models.Model):
    no_pemasok = models.CharField(max_length=50, unique=True)
    nama_supplier = models.CharField(max_length=150)
    kontak = models.CharField(max_length=20)
    alamat = models.TextField()
    catatan = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.nama_supplier


class KelolaData(models.Model):
    tanggal = models.DateField()
    jenis_beras = models.CharField(max_length=100)
    supplier = models.ForeignKey(Supplier, on_delete=models.CASCADE)
    kuantitas_kg = models.IntegerField()
    stok_kg = models.IntegerField()
    harga_per_kg = models.IntegerField()

    def save(self, *args, **kwargs):
        self.jenis_beras = JENIS_BERAS_TETAP
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.tanggal} - {self.jenis_beras}"

    @property
    def total_nilai(self):
        return self.kuantitas_kg * self.harga_per_kg


class HasilPrediksi(models.Model):
    tanggal = models.DateField()
    jenis_beras = models.CharField(max_length=100)

    stok_target = models.FloatField()
    kuantitas_target = models.FloatField()

    harga_prediksi = models.FloatField()
    nilai_rmse = models.FloatField()

    k_digunakan = models.IntegerField()

    created_at = models.DateTimeField(auto_now=True)
    detail_perhitungan = models.TextField(null=True, blank=True)

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=['tanggal'],
                name='unique_hasil_prediksi_per_tanggal'
            )
        ]

    def save(self, *args, **kwargs):
        self.jenis_beras = JENIS_BERAS_TETAP
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.tanggal} - Prediksi: {self.harga_prediksi}"
    def save(self, *args, **kwargs):
        self.jenis_beras = JENIS_BERAS_TETAP
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.tanggal} - Prediksi: {self.harga_prediksi}"