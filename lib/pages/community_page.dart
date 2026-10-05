import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';
import 'notif_page.dart';

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
        
      ),
      home: const KomunitasPage(),
    );
  }
}

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.background,
      
      appBar: AppBar(
        backgroundColor: Colors.blue,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: Colors.black.withValues(alpha: 0.3),
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
          PostCard(nama: 'Catur', judul: 'Selamat buat GothamChess udah menangin turnamen kemarin.', upvotes: '120', comments: '15'),
          PostCard(nama: 'Catur', judul: 'Ini hasil turnamen kemarin yaa, selamat buat pemenang.', upvotes: '85', comments: '5'),
          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'UKM Islam',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          PostCard(nama: 'Islam', judul: 'Ada yang mau ngaji bareng di masjid ga?', upvotes: '45', comments: '12'),
          PostCard(nama: 'Islam', judul: 'Minggu ini kita ada pengajian di hari kamis sekalian doa bersama ya guys, ditunggu kehadirannya.', upvotes: '210', comments: '42'),
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
        color: isActive
            ? Colors.blue
            : Colors.grey.shade200, // Aktif berwarna biru
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
            color: AppColors.textPrimary.withValues(alpha: 0.08),
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
                    color: AppColors.textPrimary,
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

  }
