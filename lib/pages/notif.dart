import 'package:flutter/material.dart';

const Color kBackgroundBlue = Color(0xFF1B5FD1);
const Color kCardBlue = Color(0xFF2A6FE0);
const Color kForegroundWhite = Colors.white;
const Color kSecondaryWhite = Color(0xCCFFFFFF);

void main() {
  runApp(const NotifApp());
}

class NotifApp extends StatelessWidget {
  const NotifApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifikasi',
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: kBackgroundBlue,
      ),
      home: const NotifikasiPage(),
    );
  }
}

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundBlue,
      appBar: AppBar(
        backgroundColor: kBackgroundBlue,
        elevation: 0,
        centerTitle: false,
        leading: const Icon(Icons.arrow_back, color: kForegroundWhite),
        title: const Text(
          'Notifikasi',
          style: TextStyle(
            color: kForegroundWhite,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: const [
          _SectionTitle('Hari ini'),
          _NotificationItem(
            initial: 'A',
            avatarColor: Color(0xFFEF9A4A),
            boldText: 'audyase',
            normalText: ' menyukai postingan anda.',
            timeText: '2 j',
            type: _NotifType.like,
          ),
          SizedBox(height: 10),
          _NotificationItem(
            initial: 'F',
            avatarColor: Color(0xFF4ADE80),
            boldText: 'fabieela',
            normalText: ' mulai mengikuti anda.',
            timeText: '5 j',
            type: _NotifType.follow,
          ),
          SizedBox(height: 20),
          _SectionTitle('Kemarin'),
          _NotificationItem(
            initial: 'D',
            avatarColor: Color(0xFFF472B6),
            boldText: 'dmsmhrdkaa',
            normalText: ' mengomentari postingan anda: "calon member"',
            timeText: '1 h',
            type: _NotifType.comment,
          ),
          SizedBox(height: 20),
          _SectionTitle('Minggu Ini'),
          _NotificationItem(
            initial: 'I',
            avatarColor: Color(0xFF60A5FA),
            boldText: 'igr_2005',
            normalText: ' menyukai cerita Anda.',
            timeText: '5 h',
            type: _NotifType.like,
          ),
          SizedBox(height: 20),
          _SectionTitle('Bulan Ini'),
          _NotificationItem(
            initial: 'U',
            avatarColor: Color(0xFFA78BFA),
            boldText: 'official_unesa',
            normalText: ' memposting postingan baru.',
            timeText: '2 mg',
            type: _NotifType.post,
          ),
          SizedBox(height: 10),
          _NotificationItem(
            initial: 'I',
            avatarColor: Color(0xFFFBBF24),
            normalText: ' mulai mengikuti anda.',
            boldText: 'ihzagaming',
            timeText: '3 mgg',
            type: _NotifType.follow,
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
          fontSize: 16,
        ),
      ),
    );
  }
}

enum _NotifType { like, follow, comment, post }


class _NotificationItem extends StatelessWidget {
  final String initial;
  final Color avatarColor;
  final String boldText;
  final String normalText;
  final String timeText;
  final _NotifType type;

  const _NotificationItem({
    required this.initial,
    required this.avatarColor,
    required this.boldText,
    required this.normalText,
    required this.timeText,
    required this.type,
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
          // Avatar bulat
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

          // Teks notifikasi
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
          const SizedBox(width: 8),

          _trailingWidget(),
        ],
      ),
    );
  }

  Widget _trailingWidget() {
    if (type == _NotifType.follow) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: kForegroundWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'Ikuti',
          style: TextStyle(
            color: kBackgroundBlue,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      );
    }

    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: kForegroundWhite.withOpacity(0.25),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        type == _NotifType.like
            ? Icons.favorite
            : type == _NotifType.comment
                ? Icons.chat_bubble
                : Icons.image,
        color: kForegroundWhite,
        size: 20,
      ),
    );
  }
}