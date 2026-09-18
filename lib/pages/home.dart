import 'package:flutter/material.dart';

//* widget
import '../widgets/navigation_bar.dart';
import "../widgets/post_card.dart";

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
      appBar: AppBar(
        title: const Text("Konnect."),
        elevation: 12,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        itemCount: pengencobaaja.length,
        itemBuilder: (context, index) {
          final post = pengencobaaja[index];
          return PostCard(
            // ← return widget
            nama: post['nama']!,
            judul: post['judul']!,
          );
        },
      ),

      bottomNavigationBar: const NavBar(),
    );
  }
}
