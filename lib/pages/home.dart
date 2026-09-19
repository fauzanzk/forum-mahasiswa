import 'package:flutter/material.dart';

// theme
import '../themes/color_theme.dart';

// widget
import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';

// page
import 'post.dart'; // ← TAMBAH IMPORT

final List<Map<String, String>> pengencobaaja = [
  {'nama': 'Fauzan', 'judul': 'Cara belajar Flutter?'},
  {'nama': 'Budi', 'judul': 'Error saat install'},
  {'nama': 'Siti', 'judul': 'Rekomendasi state management'},
  {'nama': 'Andi', 'judul': 'Tips optimasi performa'},
  {'nama': 'Rina', 'judul': 'Cara bikin dark mode'},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        title: const Text("Konnect."),
        elevation: 12,
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textPrimary,
      ),

      body: ListView.builder(
        itemCount: pengencobaaja.length,
        itemBuilder: (context, index) {
          final post = pengencobaaja[index];
          return PostCard(
            nama: post['nama']!,
            judul: post['judul']!,

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

      bottomNavigationBar: const NavBar(),
    );
  }
}
