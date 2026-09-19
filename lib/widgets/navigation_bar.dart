import 'package:coba_aja/themes/color_theme.dart';
import "package:flutter/material.dart";

import '../pages/home.dart';
import '../pages/community.dart';
import '../pages/profile.dart';
import '../pages/search_result.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    //* array
    final List<Map<String, dynamic>> navButton = [
      {'icon': Icons.home, 'page': HomePage()},
      {'icon': Icons.search, 'page': SearchResultPage()},
      {'icon': Icons.group, 'page': CommunityPage()},
      {'icon': Icons.person, 'page': ProfilePage()},
    ];

    //* Bottom App Bar
    return BottomAppBar(
      color: AppColors.background,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navButton.map((item) {
          return ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => item['page']),
              );
            },
            child: Icon(item["icon"]),
          );
        }).toList(),
      ),
    );
  }
}
