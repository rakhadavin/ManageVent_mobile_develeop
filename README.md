Nama : Rakha Davin Bani Alamsyah
Kelas : PBP F
NPM : 2206082650

Perbedaan Stateless Widget dan Statefull Widget
Stateless Widget adalah widget yang tidak akan pernah berubah. Stateless Widget merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.

cocok untuk elemen elemen yang tidak memrlukan perubahan secara dinamis, seperti icon, teks statis, dan sebagainya
StatefulWidget adalah widget ini dapat berubah rubah state-nya dan widget ini memiliki interaksi yang tidak terbatas.

cocok untuk elemen elemen yang memrlukan perubahan secara dinamis warna, item, warna, font, ukuran, dan sebagainya.

Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
stateless widget : a. myApp() : sebagai widget root dari aplikasi. Saat aplikasi dijalankan (void main()), MyApp dijalankan dan menetapkan tema serta halaman utama aplikasi.

Statefull widget : a. sebagai halaman utama aplikasi. Ketika halaman ini ditampilkan, pengguna dapat melihat teks yang menghitung jumlah kali tombol ditambahkan, dimana tombol yang diguunakan berupa 3 tombol yaitu lihat item, tambah item, dan logout

MaterialApp : Mengatur theme color aplikasi dengan menggunakan colorScheme

MyHomePage : melakukan konfigurasi untuk pembuatan halaman utama aplikasi

Scaffold : Menampilkan bagian navbar pada aplikasi kita, dalam hal ini di atas daftar ShopItem

GridView.count : Mengatur jumlah kolom dan mengisi ShopItem ke dalam grid

Shopcard :Membuat card yang berisi setiap ShopItem beserta gfungsi snackbar saat terkena event.

ShopItem : class yang menyimpan objek-objek yang akan ditampilkan berupa button Lihat Item, Tambah Item, dan Logout Text, Icon, Container, Padding, InkWell : Mengatur tampilan dan event action yang sesuai dalam setiap ShopCard

column : menemapilkann childern tersebut secara vertikal

EdgeInsets: Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai

text align : mengatur letak text

step-step penyelesaian setelah membuat code seperti di tutorial saya melakukan penambahan bonus dengan memberikan warna-warna yang berbeda pada masing masing tombol , dengan cara : menambahkan attribute dan constructure pada class ShopItem dengan data type Color den dengan nama variabel color

kemudian pada objek ShopItem ditambahkan 1 argumen lagi untuk menerapkan color seperti berikut :

ShopItem("Logout", Icons.logout, Colors.redAccent) nama button (text) , icon, warna button

<br>
<h1>TUGAS 8</h1>

<h3> Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!</h3>

a. Navigator.push() : merupakan salah satu cara routing dimana halaman setelahnya (halaman target) akan berada diatas halaman sebelumnya, sehingga jika kita menekan tombol "back" kita akan kembali ke halaman sebelum kita menekan tombol yang mengarahkan kita ke halaman target/ halaman selanjuitnya.

| |
| |
| page 3 |
| page 2 |
| page 1 |

---

| |
| new page 4| => penambahan page terbaru
| page 3 |
| page 2 |
| page 1 |

---

contohnya adalah ketika kita berada di page 3, kemudian routing dari flutter akan mengarah ke page 4 sbagai salah satu action, maka diatas lokasi stack page 3, akan ditambahkan page 4

b. Navogator.pushReplacemenet: merupakan salah satucara routing dimana halaman target yang baru akan menggantikan / menimpa halaman yang dibuka saat ini. Dampaknya adalah ketika kita menekantombol back, kita tidak akan kembali ke halaman sebelumnya, namun minimal kembali ke 2 halaman sebelum page terbaru, dikarenakan page sebelumnya sudah di replace oleh page terbaru

| |
| |
| page 3 |
| page 2 |
| page 1 |

---

| |
| |
| New Page 4 |=> penambahan page terbaru
| page 2 |
| page 1 |

---

contohnya : saat kita berada di page 3 kemudian kita menekan salah satu tombol yang mengarah ke page 4, maka pada lokasi stack page 3 akan digantikan dengan page 4 (replace)

<h1 > Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!</h1>

- Container: Widget ini serbaguna dan dapat digunakan sebagai wadah untuk widget lainnya. Kontainer dapat mengatur properti seperti padding, margin, warna latar belakang, dan bentuk. Ini digunakan secara umum untuk mengelompokkan atau mengatur widget-widget di dalamnya.

- Row: Row digunakan untuk menempatkan widget dalam baris horizontal. Ini berguna saat ingin menyusun beberapa widget secara sejajar satu sama lain.

- Column: Sama seperti Row, Column digunakan untuk menempatkan widget, tetapi dalam kolom vertikal. Ini berguna ketika ingin menata widget dalam susunan vertikal.

- Stack: Stack memungkinkan tumpukan widget di atas satu sama lain. Widget dalam Stack ditempatkan relatif terhadap satu yang lain, memungkinkan pembuatan tata letak yang kompleks seperti overlay atau tumpukan latar belakang dengan lapisan depan.

- ListView: ListView digunakan untuk menampilkan daftar elemen yang dapat di-scroll. Ini cocok untuk menampilkan daftar item yang dapat diakses dengan menggulir.

- GridView: GridView memungkinkan tampilan daftar data dalam bentuk grid. Ini berguna ketika ingin menampilkan elemen dalam tata letak kotak-kotak.

- Stack + Positioned: Kombinasi dari Stack dan Positioned digunakan untuk menempatkan widget secara tepat di dalam Stack dengan menentukan posisi widget menggunakan properti seperti top, bottom, left, dan right. Hal ini berguna untuk membuat tata letak yang kompleks dan spesifik.

- Flexible & Expanded: Digunakan di dalam Row, Column, atau Flex untuk mengontrol seberapa banyak ruang widget harus diambil. Flexible memberikan fleksibilitas dalam pengaturan ruang sementara Expanded mengisi semua ruang yang tersedia.

- SizedBox: Digunakan untuk memberikan batasan ukuran pada widget. Dapat digunakan untuk menambahkan ruang kosong atau mengatur ukuran widget secara spesifik.

<h1> Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!</h1>

1. TextField: Digunakan untuk input string teks biasa, dalam hal ini saya gunakan untuk memasukan input nama obat, harga obat, dan deskripsi obat(dosis)

2. DropdownButton atau DropdownButtonFormField: Digunakan untuk memilih satu opsi dari beberapa pilihan yang tersedia dalam bentuk drop-down. Dalam tugas kali ini saya menggunakan dropdown gar user dapat memilih jenis obat, dan jenis satuan untuk harga yang ditampilkan

<h1>  Bagaimana penerapan clean architecture pada aplikasi Flutter?</h1>

pada dasarnya clean architecture pada aplikasi FLutter digunakan guna mengedepankan skalabilitas dan konteks modul, dimana terdapat 4 modul utama yaitu App, Domain, Data, dan Device.

    1. Domain Layer: Ini adalah inti dari aplikasi yang berisi aturan bisnis, logika, dan entitas yang mewakili objek-objek domain. Lapisan ini tidak bergantung pada infrastruktur atau framework tertentu. Dalam Flutter, domain layer dapat berisi Entities (Business objects of the application),  model-data ,
    use case (pengaplikasian spesifik bisnis logic rule),
    repository interfaces (abstract classes yang digunakan untuk penerapan fungsionalitas), dan objek-objek yang mewakili inti bisnis aplikasi. Domain layer ini juga tidak mengandung flutter element sama sekali, fokusnya adalah kepada logic bussines.
    -

        Use Cases atau Interactors: Use cases merepresentasikan fungsionalitas spesifik dalam aplikasi yang dapat dipanggil dari lapisan presentasi (UI). Mereka berisi logika bisnis dan berkomunikasi dengan repository untuk mengambil atau memperbarui data. Di Flutter, use cases biasanya diterapkan sebagai kelas-kelas atau fungsi-fungsi yang menghubungkan lapisan presentasi dengan lapisan data.

    Lapisan Presentasi (Presentation Layer): Ini adalah lapisan yang bertanggung jawab untuk menampilkan informasi kepada pengguna dan menerima input dari mereka. Dalam Flutter, lapisan presentasi meliputi widget-widget UI, logika UI, dan manajemen state. Penggunaan arsitektur seperti BLoC (Business Logic Component) atau Provider dapat digunakan di sini untuk mengelola state aplikasi.

    Lapisan Data: Lapisan ini bertanggung jawab untuk mengelola sumber data aplikasi, seperti database, API, atau penyimpanan lokal. Di dalam Flutter, lapisan ini dapat berisi implementasi repository, data models, dan API services.

    2. APP
    merupakan lapisan yang paling bergantung pada framework dimana lapisan ini berisi UI  dan hadlernya. ada 3 kelas utama didalamnya yaitu :
        - View : hanya menampilkan UI saja
        - Controller : mengontrol data secara dinamis yang diimplementasikan dengan menerapkan event-handlers dan actions.
        - Presenter : berkomunikasi dengan Usecase, dimana ini berfungsi sebagai penghubung fungsionalitas dan accessibility

    3. Data
    merupakan bagian dari lapisan terluar, bertanggung jawab untuk pengambilan data. Hal ini dapat berupa panggilan API ke server, database lokal, atau bahkan keduanya. ada 3 kelas utama didalamnya :
        - Repositories digunakan untuk dapat melakukan akses lintas module, mulai dari tampilan hingga event-handlers, karena bagian ini akan mengambil data dari database dan bertanggung jawab atas data yang dioperasikan.
        - Models dalam kasus besar model sangat dibutuhkan, tpi jika hanya menggunakan database dengan data yang tidak banyak, maka kita tidak memerlukan models. Models merupakan entitas tambahan untuk memudahkan responsibility dan perancangan fungsionalitas aplikasi.
        -Mappers : memetakan objek/data ke models

    4. Device
    merupakan lapisan terluar yang digunakan berkomunikasi langung dengan palform seperti Android, IOS, dll. Device bertangggung jawab dalam komunikasi dan penghubung transfer data antar platform yang dilakukan dengan menerapkan fungsionalitas tertentu


    Dalam penerapan Clean Architecture pada Flutter, perhatian utama adalah memisahkan logika bisnis dari kode UI dan infrastruktur. Hal ini memungkinkan aplikasi menjadi lebih mudah diuji, dipelihara, dan dikembangkan karena setiap lapisan memiliki ketergantungan yang terdefinisi dengan jelas terhadap lapisan lainnya.

    Penerapan Clean Architecture di Flutter juga bisa dibantu dengan menggunakan package atau library seperti GetX, Riverpod, atau BloC Pattern. Mereka dapat membantu dalam pengelolaan state, penyediaan dependensi, dan pengaturan lapisan-lapisan dalam aplikasi.


    <h1>Step-step penyelsaian tugas</h1>
    1. melakukan apa yang dilakukan di tutorial
    2. membuat form, saya menggunakan konsep yang sedikit berbeda pada pembuatan form ini, dimana saya membuat widget untuk masing-masing field diluar class, sehingga didalam class hanya pemanggilan widget field saja, shingga code lebih bersih karena pengaturan UI dan logic sudah include di luar class, dan terdapat di dalam widget terpisah.
    3. melakukan validasi, khususnya untuk harga, dimana user harus memasukkkan input berupa integer, dkemudian memeriksanya jika, setelah di parseInt menjadi error, maka ia adalah string dan sebagai respon error, saya memunculkan alert popup, kemudian membuat field itu bersih/kosong kembali dengan mengunakan Dropdownbutton
    4. Membuat dropdown untuk jenis satuan dan jjenis obat yang didaftarkan

z 4. class show produk saya bbuat untuk menampilkan produk yang sudah terdaftar dalam aplikasi.

<h1> TUGAS 9 </h1>
1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Ya, bisa, namun tergantung kebutuhan, jika hanya ingin melihat data sekedar akses tanpa manipulasi dan pemanggilan object, maka tanpa menggunakan model proses pengmbilan data JSON alkan lebih cepat dan praktis.

Namun jika ingin ada manipulasi data, maka akan ada pemanggilan object untuk keerlian tertentu misalkan validasi, CRUD, dan sebagainya, sangat disarankan uhtuk menggunakan model supaya lebih terstruktur dan rapi, sehingga pemanggilna akan elbih mudah dann tidak membingungkan secara alur

2.Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest dalam konteks Flutter mungkin merujuk pada objek atau kelas yang digunakan untuk membuat, mengelola, atau mengirim permintaan HTTP yang melibatkan pengaturan atau manipulasi cookie.

instance CookieRequest perlu dibagikan ke seua komponen aplikasi flutter karena untuk memastikan semua komponen flutter memiliki data cookie tersebut sehingga tidak perlu login lagi untuk masuk ke komponen lain. Hal ini berkaitan dengan State management, yang berasangkutan dengan kelola akses dan izin , dan unutk kustomisasi permnitaan (HTTP) sehingga integrasi perbahan akan mudah dilakukan.

pengujian unit test yang lebih mudah.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

a. Ambil Data JSON: Dapatkan data dari sumbernya, seperti API endpoint, file JSON, atau server.

b. Konversi ke Objek Dart:
Gunakan fungsi bawaan Flutter dart:convert untuk mengonversi data JSON menjadi objek Dart. Ini melibatkan fungsi json.decode() untuk mengurai JSON menjadi bentuk Dart.

c.Pemodelan Data: Buat model(models.dart) Dart yang sesuai dengan struktur data JSON untuk menyimpan data yang diurai. Misalnya, jika JSON memiliki array objek, buat kelas Dart untuk merepresentasikan objek tersebut.

d.Gunakan Builder Widgets:
Gunakan widget seperti FutureBuilder atau StreamBuilder jika data diambil secara asynchronous dari API. Ini memungkinkan Flutter untuk merespons perubahan data dan membangun ulang UI secara otomatis.

e.Binding Data ke Widget:
Gunakan objek-objek model yang telah diisi dengan data untuk mengikat nilai-nilai tersebut ke dalam widget Flutter. Misalnya, gunakan properti Text untuk menampilkan teks dari properti objek model.

f.Widget Rebuild:

Pastikan untuk memperbarui widget ketika data berubah. Ini bisa dilakukan dengan me-refresh state atau menggunakan setState jika ada perubahan pada data yang mempengaruhi tampilan.

4.Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Autentikasi dari Flutter ke Django:
Input Data Akun:

Pengguna memasukkan informasi akun seperti nama pengguna dan kata sandi ke dalam aplikasi Flutter.
Permintaan Autentikasi:

Aplikasi Flutter membuat permintaan HTTP (biasanya menggunakan package seperti http atau dio) ke endpoint autentikasi di backend Django. Permintaan ini mungkin berisi data seperti nama pengguna dan kata sandi yang dimasukkan oleh pengguna.
Validasi Input:

Django menerima permintaan tersebut dan melakukan validasi terhadap data yang diterima, seperti memeriksa apakah nama pengguna dan kata sandi valid.
Proses Autentikasi:

Django menggunakan metode autentikasi yang tersedia (seperti autentikasi berbasis token, session, OAuth, atau yang lainnya) untuk memverifikasi kredensial yang diberikan. Jika kredensial valid, Django menghasilkan token atau sesi yang akan digunakan untuk otentikasi selanjutnya.
Respon dari Django ke Flutter:

Django mengirimkan respon ke aplikasi Flutter. Respon ini dapat berupa token atau sesi yang disematkan dalam data JSON sebagai tanggapan terhadap permintaan autentikasi yang berhasil.
Tampilan Menu pada Flutter setelah Autentikasi:
Penyimpanan Token/Sesi:

Aplikasi Flutter menyimpan token atau sesi yang diterima dari Django secara lokal, biasanya menggunakan metode penyimpanan yang aman seperti Shared Preferences atau Secure Storage.
Permintaan Data Menu:

Setelah autentikasi berhasil, aplikasi Flutter membuat permintaan ke endpoint backend Django yang meminta data menu atau informasi lain yang diperlukan oleh pengguna yang sudah diautentikasi.
Validasi Token/Sesi:

Django memvalidasi token atau sesi yang diterima dari aplikasi Flutter. Jika token/sesi valid, Django mengembalikan data menu yang diminta sebagai tanggapan.
Tampilan Menu di Flutter:

Aplikasi Flutter menggunakan data menu yang diterima dari Django untuk membuat tampilan menu yang sesuai. Data ini dapat diatur ke dalam struktur yang cocok untuk digunakan dalam widget-widget seperti ListView, GridView, atau Drawer untuk menampilkan menu-menu yang diperoleh.

5. Penggunaan Widget

kurang lebih tidak ada pengurangan eidget dari tugas kemarin, namun ada beberapa penambahan widget untuk tugas 9 ini:

1. textfield : untuk input text
2. enentukan dimensi ruang kosong dengan ukuran tertentu baik secara horizontal maupun vertikal di dalam tata letak.
3. elevated button : memberikan tampilan tombol yang menonjol dengan bayangan dan dapat diangkat dari permukaan utama layar.
   4.ListView : digunakan untuk menampilkan daftar item yang dapat digulirkan secara vertikal atau horizontal.
4. ListTile : menyediakan tata letak khusus yang umumnya digunakan untuk menampilkan item dalam daftar dengan struktur yang khas.
