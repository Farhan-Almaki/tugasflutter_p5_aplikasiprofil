# tugas_flutter_p5
**Nama:** Farhan Al Maki  
**Mata Kuliah:** Aplikasi Mobile  
**Dosen:** I Ketut Gunawan, S.Kom, M.T.I.  

---

## Penjelasan Perbaikan Kode (Debugging Log)

1. **Pemisahan File:** Memisah kode dari `main.dart` ke file baru `profile_page.dart` biar kodenya rapi dan nggak numpuk.
2. **Extract Widget:** Memecah `Column` yang panjang jadi komponen kecil terpisah (`ProfileAvatar` dan `ProfileInfo`).
3. **Fix Tipe Data:** Benerin parameter `count` di `StatItem` yang tadinya dibaca `int` jadi `String`.
4. **Fix Layout Overflow:** Membungkus `ListView.builder` pakai `Expanded` biar kodenya nggak error kuning-hitam (overflow).

---

## Commit Untuk Hari Ke Hari

### Hari 1 (Struktur Awal & Pemisahan Widget)
* **Commit 1 :** `feat: buat struktur awal profil pengguna ada avatar dan nama`
  * *Penjelasan:* Buat struktur awal di `main.dart` dan `profile_page.dart` yang berisi foto profil dan nama/role.
* **Commit 2 :** `refactor: pisah tampilan avatar sama nama jadi widget sendiri`
  * *Penjelasan:* Memisah tampilan foto dan nama ke widget `ProfileAvatar` dan `ProfileInfo`.

---

### Hari 2 (Baris Statistik Profil)
* **Commit 1:** `feat: tambah baris statistik profil proyek followers dan following`
  * *Penjelasan:* Menambahkan komponen baris berisi angka proyek, followers, dan following.
* **Commit 2:** `refactor: pisah statistik profil jadi widget ProfileStats dan StatItem`
  * *Penjelasan:* Memisah baris statistik ke widget terpisah `ProfileStats` dan `StatItem` biar reusable.

---

### 🔹 Hari 3 (Daftar Pengalaman Projek)
* **Commit 1 dan 2:** `feat: tambah list pengalaman projek pakai listview builder dan benerin padding biar rapi`
  * *Penjelasan:* Menambahkan daftar pengalaman projek yang scrollable pakai `ListView.builder` dan `Expanded`.
* **Commit 3:** `refactor: pisah kartu item projek jadi widget tersendiri ExperienceCard`
  * *Penjelasan:* Memisah item tampilan kartu projek menjadi custom widget `ExperienceCard`.

---