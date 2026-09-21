import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';
import 'settings.dart';
import 'notif.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: false,
        title: const Text(
          'Konnect.',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 24,
            letterSpacing: -1.0,
          ),
        ),
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
          IconButton(
            iconSize: 28,
            icon: const Icon(Icons.settings_outlined, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),

      body: ListView(
        children: [
          const SizedBox(height: 16),

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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue,
                ),
                onPressed: () {},
                child: const Text('Edit Profile'),
              ),
            ],
          ),

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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatColumn('23', 'Posts'),
              _buildStatColumn('1.4k', 'Karma'),
              _buildStatColumn('5', 'Communities'),
            ],
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Posts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),

          PostCard(
            nama: '',
            judul: 'Tips bertahan hidup di ujian akhir Basis Data',
            customSubtitle: 'r/SistemInformasi • 2 jam yang lalu',
            upvotes: '247',
            comments: '38',
          ),
          PostCard(
            nama: '',
            judul: 'Ada yang kesulitan dengan kurikulum Aljabar Linear yang baru?',
            customSubtitle: 'r/SistemInformasi • 2 hari yang lalu',
            upvotes: '94',
            comments: '47',
          ),
          PostCard(
            nama: '',
            judul: 'Tempat belajar paling nyaman di sekitar kampus',
            customSubtitle: 'r/KehidupanKampus • 1 minggu yang lalu',
            upvotes: '1.2k',
            comments: '124',
          ),
        ],
      ),

      bottomNavigationBar: const NavBar(currentIndex: 3),
    );
  }

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
}
