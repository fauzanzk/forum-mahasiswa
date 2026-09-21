import 'package:flutter/material.dart';

//* widget
import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Navigator.pop(context);
          },
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              SizedBox(width: 12),
              Icon(Icons.search, color: Colors.grey),
              SizedBox(width: 8),
              Text(
                'Skripsi',
                style: TextStyle(color: Colors.black87, fontSize: 16),
              ),
            ],
          ),
        ),
      ),

      body: ListView(
        children: [
          // 1. Kategori
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            child: Row(
              children: [
                _buildCategoryPill('For you', isActive: true),
                const SizedBox(width: 8),
                _buildCategoryPill('Posts', isActive: false),
                const SizedBox(width: 8),
                _buildCategoryPill('Communities', isActive: false),
              ],
            ),
          ),

          // 2. Komunitas/UKM
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Communities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _buildCommunityItem(
            'PS',
            Colors.orange,
            'r/PejuangSkripsi',
            '15k Members',
          ),
          _buildCommunityItem(
            'TI',
            Colors.green,
            'r/TeknikInformatika',
            '8k Members',
          ),

          const Divider(height: 32),

          // 3. Posts
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Posts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          PostCard(
            nama: '',
            judul: 'Ada saran judul skripsi untuk anak IT yang tidak jago ngoding?',
            customSubtitle: 'r/TeknikInformatika • 5 jam yang lalu',
            upvotes: '128',
            comments: '45',
          ),
          PostCard(
            nama: '',
            judul: 'Berapa lama idealnya mengerjakan skripsi dari Bab 1 sampai selesai?',
            customSubtitle: 'r/PejuangSkripsi • 1 hari yang lalu',
            upvotes: '342',
            comments: '89',
          ),
          PostCard(
            nama: '',
            judul: 'Dosen pembimbing susah ditemui, apa yang harus saya lakukan?',
            customSubtitle: 'r/KehidupanKampus • 3 hari yang lalu',
            upvotes: '510',
            comments: '130',
          ),
          const SizedBox(height: 32),
        ],
      ),

      // Navigasi Bawah
      bottomNavigationBar: const NavBar(currentIndex: 1),
    );
  }

  // Tombol tombol kategori
  Widget _buildCategoryPill(String title, {required bool isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey.shade200,
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

  // Item item komunitas
  Widget _buildCommunityItem(
    String initial,
    Color color,
    String title,
    String subtitle,
  ) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(initial, style: const TextStyle(color: Colors.white)),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle),
      trailing: const Text(
        'Join',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }

}
