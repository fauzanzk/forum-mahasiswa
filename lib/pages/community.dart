import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';
import 'notif.dart';

void main() {
  runApp(const CommunityPage());
}

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Communities',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const KomunitasPage(),
    );
  }
}

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

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
            fontSize: 24, // Diperkecil dari 28
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
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          // Pills Category
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                _buildCategoryPill('My Community', isActive: true),
                const SizedBox(width: 8),
                _buildCategoryPill('Discover', isActive: false),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // UKM Cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: _buildUkmCard(
                    name: 'UKM Catur',
                    icon: Icons.grid_on,
                    iconColor: const Color(0xFFFBBF24),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildUkmCard(
                    name: 'UKM Islam',
                    icon: Icons.mosque,
                    iconColor: const Color(0xFF4ADE80),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // Feed
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'UKM Catur',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildPostCard(
            'Dimas',
            const Color(0xFFFBBF24),
            'Selamat buat GothamChess udah menangin turnamen kemarin.',
            '2 h',
            '120',
            '15',
          ),
          _buildPostCard(
            'Arum',
            const Color(0xFFFBBF24),
            'Ini hasil turnamen kemarin yaa, selamat buat pemenang.',
            '3 h',
            '85',
            '5',
          ),
          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'UKM Islam',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildPostCard(
            'Iggi',
            const Color(0xFF4ADE80),
            'Ada yang mau ngaji bareng di masjid ga?',
            '1 j',
            '45',
            '12',
          ),
          _buildPostCard(
            'Septyan',
            const Color(0xFF4ADE80),
            'Minggu ini kita ada pengajian di hari kamis sekalian doa bersama ya guys, ditunggu kehadirannya.',
            '3 h',
            '210',
            '42',
          ),
          const SizedBox(height: 32),
        ],
      ),
      bottomNavigationBar: const NavBar(currentIndex: 2),
    );
  }

  // ===========================================================================
  // HELPER WIDGETS (Disamakan gayanya dengan search_result dan profile)
  // ===========================================================================

  Widget _buildCategoryPill(String title, {required bool isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey.shade200, // Aktif berwarna biru
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildUkmCard({
    required String name,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Text(
                'Gabung',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.arrow_forward, color: Colors.blue, size: 16),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(
    String author,
    Color avatarColor,
    String content,
    String time,
    String upvotes,
    String comments,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: avatarColor,
              child: Text(
                author[0],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              author,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(width: 8),
            Text(
              '• $time yang lalu',
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
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
