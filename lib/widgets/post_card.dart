import 'package:flutter/material.dart';



class PostCard extends StatelessWidget {
  final String nama;
  final String judul;
  final String upvotes;
  final String comments;
  final String? customSubtitle;
  final VoidCallback? onTap;

  const PostCard({
    super.key,
    required this.nama,
    required this.judul,
    this.upvotes = '100',
    this.comments = '10',
    this.customSubtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        onTap: onTap,
        title: Text(judul, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(customSubtitle ?? 'r/$nama • beberapa waktu yang lalu'),
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
