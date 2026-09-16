import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // Menggunakan ListView agar bisa di-scroll
      body: ListView(
        children: [
          const SizedBox(height: 16),
          
          // 1. Bagian Header
          // Menggunakan ListTile karena ini adalah cara paling basic dan mudah
          // di Flutter untuk membuat baris yang ada ikon di kiri, judul di tengah, dan tombol di kanan
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: Text('AS', style: TextStyle(color: Colors.white)),
            ),
            title: const Text('Arya Santoso', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            subtitle: const Text('@arya.santoso • 2022130042'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text('Edit Profile'),
            ),
          ),
          
          // 2. Bagian Bio
          // Menggunakan Padding biasa agar tulisan tidak menempel ke pinggir layar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Information Systems — Class of 2026', 
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 8),
                // Konten bahasa Indonesia dan tanpa emoji
                Text(
                  'Mahasiswa aktif. Suka ngoding sambil minum kopi. Sangat tertarik dengan pembuatan website dan pengolahan data. Saat ini sedang mendalami cara kerja database PostgreSQL.'
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // 3. Bagian Statistik
          // Cukup menggunakan Row dan Column dasar secara langsung (inline)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('23', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Posts', style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text('1.4k', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Karma', style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                children: [
                  Text('5', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Communities', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          // 4. Pembatas dan Judul Postingan
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Posts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const Divider(),

          // 5. Daftar Postingan (Konten Bahasa Indonesia)
          // Menggunakan Card dan ListTile adalah trik paling basic untuk membuat daftar yang bagus tanpa kode rumit
          const Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text('Tips bertahan hidup di ujian akhir Basis Data', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('r/SistemInformasi • 2 jam yang lalu\n247 Suka • 38 Komentar'),
            ),
          ),
          
          const Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text('Ada yang kesulitan dengan kurikulum Aljabar Linear yang baru?', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('r/SistemInformasi • 2 hari yang lalu\n94 Suka • 47 Komentar'),
            ),
          ),
          
          const Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text('Tempat belajar paling nyaman di sekitar kampus', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('r/KehidupanKampus • 1 minggu yang lalu\n1.2k Suka • 124 Komentar'),
            ),
          ),
        ],
      ),
      
      // 6. Navigasi Bawah
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Alerts'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
