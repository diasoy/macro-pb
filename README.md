# 🎮 Point Blank Macro Collection

Kumpulan macro AutoHotkey untuk game Point Blank yang dapat membantu gameplay Anda.

## 🚀 Cara Instalasi

### Langkah 1: Install AutoHotkey

1. Download **AutoHotkey v2.0** dari: https://www.autohotkey.com/
2. Install seperti biasa (next → next → install)
3. Tunggu hingga instalasi selesai

### Langkah 2: Download Macro

1. Clone atau download repository ini
2. Pilih macro yang sesuai dengan kebutuhan Anda
3. Simpan di folder yang mudah diakses

---

## 🎯 Cara Penggunaan

### Menjalankan Macro

1. **Double-click** file `.ahk` yang ingin digunakan
2. Icon AutoHotkey akan muncul di **System Tray** (pojok kanan bawah taskbar)
3. Macro otomatis aktif dan siap digunakan!

### Kontrol Macro

Semua macro menggunakan kontrol yang sama:

| Tombol | Fungsi |
|--------|--------|
| **HOLD Mouse 5** | Loop macro secara unlimited (selama ditekan) |
| **F6** | Toggle macro ON/OFF (dengan notifikasi & beep) |
| **F7** | Restart macro jika stuck/error |
| **CTRL + ESC** | Keluar dari macro |

> **Catatan:** Mouse 5 biasanya adalah tombol "Back" pada mouse gaming

---

## ⚙️ Kustomisasi

### Mengubah Delay

Edit file `.ahk` dan cari baris `Sleep`:
```ahk
Sleep 800  ; Ubah angka ini (dalam milliseconds)
```

### Mengubah Tombol Trigger

Ganti `XButton2` dengan tombol lain:
- `XButton1` - Mouse 4 (Forward button)
- `F8` - Tombol F8 keyboard
- `MButton` - Tombol tengah mouse (scroll wheel click)

### Mengubah Urutan Aksi

Edit bagian dalam loop untuk menyesuaikan urutan:
```ahk
MouseClick "Right"  ; Klik kanan
Sleep 30
MouseClick "Left"   ; Klik kiri
Sleep 30
SendEvent "{3}"     ; Tekan angka 3
Sleep 30
SendEvent "{1}"     ; Tekan angka 1
```

---

## 🔧 Troubleshooting

### Macro tidak berfungsi di game?

1. **Jalankan sebagai Administrator:**
   - Klik kanan file `.ahk`
   - Pilih "Run as administrator"

2. **Pastikan Point Blank juga run sebagai admin**

3. **Cek mouse button:**
   - Beberapa mouse menggunakan button mapping berbeda
   - Coba ganti ke `XButton1` jika `XButton2` tidak berfungsi

### Macro tiba-tiba berhenti?

1. Tekan **F7** untuk restart macro
2. Pastikan icon AutoHotkey masih ada di system tray
3. Jika hilang, jalankan ulang file `.ahk`

### Input tidak terdeteksi?

1. Ubah `SendMode "Event"` menjadi `SendMode "Input"` di baris 8
2. Atau coba tambahkan delay lebih panjang

---

## ⚠️ Disclaimer

- Penggunaan macro dalam game **dapat melanggar Terms of Service**
- Gunakan dengan **risiko Anda sendiri**
- Macro ini dibuat untuk **tujuan edukasi**
- Saya tidak bertanggung jawab atas konsekuensi penggunaan macro ini

---

## 📝 Tips Penggunaan

1. **Latihan dulu di Practice Mode** sebelum digunakan di pertandingan
2. **Sesuaikan delay** dengan koneksi dan FPS Anda
3. **Jangan terlalu bergantung** pada macro - skill tetap yang utama!
4. **Gunakan bijak** agar tidak ketahuan atau banned

---

## 🤝 Kontribusi

Jika Anda punya macro lain atau perbaikan, silakan:
1. Fork repository ini
2. Buat branch baru
3. Submit pull request

---

## 📞 Support

Jika ada pertanyaan atau masalah:
- Buka **Issues** di GitHub
- Sertakan screenshot dan deskripsi masalah

---

**Happy Gaming! 🎮**
