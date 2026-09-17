import 'package:flutter/material.dart';

const Color kBackgroundBlue = Color(0xFF1B5FD1);
const Color kCardBlue = Color(0xFF2A6FE0);
const Color kForegroundWhite = Colors.white;
const Color kSecondaryWhite = Color(0xCCFFFFFF); 

void main() {
  runApp(const KomunitasApp());
}

class KomunitasApp extends StatelessWidget {
  const KomunitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Komunitas',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: kBackgroundBlue,
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
      backgroundColor: kBackgroundBlue,
      appBar: AppBar(
        backgroundColor: kBackgroundBlue,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Komunitas',
          style: TextStyle(
            color: kForegroundWhite,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: const [
          
          Row(
            children: [
              SizedBox(width: 10),
              _TabPill(label: 'My Community', selected: true),
            ],
          ),
          SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: _UkmCard(
                  name: 'UKM Catur',
                  icon: Icons.grid_on,
                  iconColor: Color(0xFFFBBF24),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _UkmCard(
                  name: 'UKM Islam',
                  icon: Icons.mosque,
                  iconColor: Color(0xFF4ADE80),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),

          _SectionTitle('UKM Catur'),
          _CommunityPostItem(
            initial: 'D',
            avatarColor: Color(0xFFFBBF24),
            boldText: 'Dimas',
            normalText: ' memposting: Selamat buat GothamChess udah menangin turnamen kemarin.',
            timeText: '2 h',
          ),
          SizedBox(height: 10),
          _CommunityPostItem(
            initial: 'A',
            avatarColor: Color(0xFFFBBF24),
            boldText: 'Arum',
            normalText: ' memposting: Ini hasil turnamen kemarin yaa, selamat buat pemenang.',
            timeText: '3 h',
          ),
          SizedBox(height: 20),
          _SectionTitle('UKM Islam'),
          _CommunityPostItem(
            initial: 'I',
            avatarColor: Color(0xFF4ADE80),
            boldText: 'Iggi',
            normalText: ' memposting: Ada yang mau ngaji bareng di masjid ga?',
            timeText: '1 j',
          ),
          SizedBox(height: 10),
          _CommunityPostItem(
            initial: 'S',
            avatarColor: Color(0xFF4ADE80),
            boldText: 'Septyan',
            normalText: ' memposting: Minggu ini kita ada pengajian di hari kamis sekalian doa bersama ya guys, ditunggu kehadirannya.',
            timeText: '3 h',
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: kCardBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, color: kForegroundWhite),
              Icon(Icons.search, color: kForegroundWhite),
              Icon(Icons.groups, color: kForegroundWhite),
              Icon(Icons.person, color: kForegroundWhite),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabPill extends StatelessWidget {
  final String label;
  final bool selected;
  const _TabPill({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? kForegroundWhite : kCardBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? kBackgroundBlue : kForegroundWhite,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
    );
  }
}

class _UkmCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color iconColor;

  const _UkmCard({
    required this.name,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: kCardBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 22),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: kForegroundWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          Row(
            children: const [
              Text(
                'Gabung',
                style: TextStyle(
                  color: kForegroundWhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.arrow_forward, color: kForegroundWhite, size: 16),
            ],
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: kForegroundWhite,
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class _CommunityPostItem extends StatelessWidget {
  final String initial;
  final Color avatarColor;
  final String boldText;
  final String normalText;
  final String timeText;

  const _CommunityPostItem({
    required this.initial,
    required this.avatarColor,
    required this.boldText,
    required this.normalText,
    required this.timeText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: kCardBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: avatarColor,
            child: Text(
              initial,
              style: const TextStyle(
                color: kForegroundWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: const TextStyle(fontSize: 14, color: kForegroundWhite),
                children: [
                  TextSpan(
                    text: boldText,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: normalText),
                  TextSpan(
                    text: '  $timeText',
                    style: const TextStyle(
                      color: kSecondaryWhite,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}