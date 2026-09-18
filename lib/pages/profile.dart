import 'package:flutter/material.dart';

//* Widget
import '../widgets/navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: false,
        title: const Text(
          'Konnect.',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 28,
            letterSpacing: -1.0,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          const SizedBox(height: 16),

          // 1. Bagian Header (Gaya WhatsApp)
          Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Text(
                  'AS',
                  style: TextStyle(color: Colors.white, fontSize: 36),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Arya Santoso',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 4),
              const Text(
                '@arya.santoso • 2022130042',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Edit Profile'),
              ),
            ],
          ),

          // 2. Bagian Bio
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Information Systems — Class of 2026',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Mahasiswa aktif. Suka ngoding sambil minum kopi. Sangat tertarik dengan pembuatan website dan pengolahan data. Saat ini sedang mendalami cara kerja database PostgreSQL.',
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // 3. Bagian Statistik
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatColumn('23', 'Posts'),
              _buildStatColumn('1.4k', 'Karma'),
              _buildStatColumn('5', 'Communities'),
            ],
          ),

          const SizedBox(height: 24),

          // 4. Pembatas dan Judul Postingan
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Posts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),

          // 5. Daftar Postingan
          _buildPostCard(
            'Tips bertahan hidup di ujian akhir Basis Data',
            'r/SistemInformasi • 2 jam yang lalu',
            '247',
            '38',
          ),
          _buildPostCard(
            'Ada yang kesulitan dengan kurikulum Aljabar Linear yang baru?',
            'r/SistemInformasi • 2 hari yang lalu',
            '94',
            '47',
          ),
          _buildPostCard(
            'Tempat belajar paling nyaman di sekitar kampus',
            'r/KehidupanKampus • 1 minggu yang lalu',
            '1.2k',
            '124',
          ),
        ],
      ),

      // 6. Navigasi Bawah
      bottomNavigationBar: const NavBar(),
    );
  }

  // ===========================================================================
  // FUNGSI-FUNGSI HELPER (WIDGET REUSABLE) UNTUK EFISIENSI KODE
  // ===========================================================================

  // Fungsi untuk membuat kolom statistik (Posts, Karma, Communities)
  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  // Fungsi untuk membuat kartu postingan (Sama seperti di searchresult.dart)
  Widget _buildPostCard(
    String title,
    String subtitle,
    String upvotes,
    String comments,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.arrow_upward, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(upvotes),
                const SizedBox(width: 16),
                const Icon(
                  Icons.chat_bubble_outline,
                  size: 16,
                  color: Colors.grey,
                ),
                const SizedBox(width: 4),
                Text(comments),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
