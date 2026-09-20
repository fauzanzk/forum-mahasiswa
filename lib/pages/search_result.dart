import 'package:flutter/material.dart';

//* widget
import '../widgets/navigation_bar.dart';

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
          _buildPostCard(
            'Ada saran judul skripsi untuk anak IT yang tidak jago ngoding?',
            'r/TeknikInformatika • 5 jam yang lalu',
            '128',
            '45',
          ),
          _buildPostCard(
            'Berapa lama idealnya mengerjakan skripsi dari Bab 1 sampai selesai?',
            'r/PejuangSkripsi • 1 hari yang lalu',
            '342',
            '89',
          ),
          _buildPostCard(
            'Dosen pembimbing susah ditemui, apa yang harus saya lakukan?',
            'r/KehidupanKampus • 3 hari yang lalu',
            '510',
            '130',
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

  // Fungsi kartu postingan
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
