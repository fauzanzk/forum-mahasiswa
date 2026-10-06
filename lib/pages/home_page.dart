import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../widgets/navigation_bar.dart';
import '../widgets/post_card.dart';
import 'post_page.dart';
import 'notif_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Static dummy data based on forum_db.sql seed data
    final List<Map<String, dynamic>> dummyPosts = [
      {
        'nama': 'SistemInformasi',
        'judul': 'Tips bertahan hidup di ujian akhir Basis Data',
        'upvotes': 42,
        'comments': 12,
      },
      {
        'nama': 'TeknikInformatika',
        'judul': 'Ada saran judul skripsi untuk anak IT yang tidak jago ngoding?',
        'upvotes': 156,
        'comments': 89,
      },
      {
        'nama': 'KehidupanKampus',
        'judul': 'Tempat belajar paling nyaman di sekitar kampus',
        'upvotes': 23,
        'comments': 5,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text(
          "Konnect.",
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w900, 
            fontStyle: FontStyle.italic, 
            fontSize: 28, 
            letterSpacing: -1.0
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.primary,
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              iconSize: 28,
              icon: const Icon(Icons.notifications_none_rounded, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => const NotifikasiPage())
                );
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 12, bottom: 24),
        itemCount: dummyPosts.length,
        itemBuilder: (context, index) {
          final post = dummyPosts[index];
          return PostCard(
            nama: post['nama'],
            judul: post['judul'],
            upvotes: post['upvotes'].toString(),
            comments: post['comments'].toString(),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DiskusiPage(nama: post['nama'], judul: post['judul'])
                )
              );
            },
          );
        },
      ),
      bottomNavigationBar: const NavBar(currentIndex: 0),
    );
  }
}
