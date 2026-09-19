import "package:flutter/material.dart";

import '../pages/home.dart';
import '../pages/community.dart';
import '../pages/profile.dart';
import '../pages/search_result.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;

  const NavBar({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    //* array (Menggunakan ikon versi Outlined / Rounded agar lebih modern dan konsisten)
    final List<Map<String, dynamic>> navButton = [
      {'icon': Icons.home_outlined, 'active_icon': Icons.home, 'page': const HomePage()},
      {'icon': Icons.search_rounded, 'active_icon': Icons.search, 'page': const SearchResultPage()},
      {'icon': Icons.people_outline_rounded, 'active_icon': Icons.people, 'page': const CommunityPage()},
      {'icon': Icons.person_outline_rounded, 'active_icon': Icons.person, 'page': const ProfilePage()},
    ];

    //* Bottom App Bar
    return BottomAppBar(
      color: Colors.blue, // Ubah warna navbar menjadi biru
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navButton.asMap().entries.map((entry) {
          int idx = entry.key;
          var item = entry.value;
          bool isActive = idx == currentIndex;

          return IconButton(
            iconSize: isActive ? 34 : 30, // Perbesar sedikit jika aktif
            color: isActive ? Colors.white : Colors.white70, // Beri efek transparan jika tidak aktif
            onPressed: () {
              if (!isActive) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => item['page']),
                );
              }
            },
            icon: Icon(isActive ? item["active_icon"] : item["icon"]), // Gunakan ikon filled jika aktif
          );
        }).toList(),
      ),
    );
  }
}
