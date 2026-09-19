import 'package:flutter/material.dart';

// theme
import '../themes/color_theme.dart';

// widget
import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';

// page
import 'post.dart';
import 'notif.dart';

final List<Map<String, String>> pengencobaaja = [
  {
    'nama': 'SistemInformasi',
    'judul': 'Tips bertahan hidup di ujian akhir Basis Data',
    'upvotes': '247',
    'comments': '38',
  },
  {
    'nama': 'TeknikInformatika',
    'judul': 'Ada saran judul skripsi untuk anak IT yang tidak jago ngoding?',
    'upvotes': '128',
    'comments': '45',
  },
  {
    'nama': 'KehidupanKampus',
    'judul': 'Tempat belajar paling nyaman di sekitar kampus',
    'upvotes': '1.2k',
    'comments': '124',
  },
  {
    'nama': 'PejuangSkripsi',
    'judul': 'Berapa lama idealnya mengerjakan skripsi dari Bab 1 sampai selesai?',
    'upvotes': '342',
    'comments': '89',
  },
  {
    'nama': 'SistemInformasi',
    'judul': 'Ada yang kesulitan dengan kurikulum Aljabar Linear yang baru?',
    'upvotes': '94',
    'comments': '47',
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text(
          "Konnect.",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 24, // Diperkecil dari 28
            letterSpacing: -1.0,
          ),
        ),
        elevation: 12,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotifikasiPage()),
              );
            },
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: pengencobaaja.length,
        itemBuilder: (context, index) {
          final post = pengencobaaja[index];
          return PostCard(
            nama: post['nama']!,
            judul: post['judul']!,
            upvotes: post['upvotes']!,
            comments: post['comments']!,

            // ── TAMBAH onTap
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DiskusiPage(nama: post['nama']!, judul: post['judul']!),
                ),
              );
            },
          );
        },
      ),

      bottomNavigationBar: const NavBar(currentIndex: 0),
    );
  }
}
