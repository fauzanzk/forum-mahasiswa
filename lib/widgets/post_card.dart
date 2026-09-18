import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  // ── Parameter
  final String nama;
  final String judul;

  // ── Constructor
  const PostCard({super.key, required this.nama, required this.judul});

  // ── build()
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Avatar + nama
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Text(
                  nama[0],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                nama,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // ── Judul
          Text(judul, style: const TextStyle(fontSize: 15, height: 1.4)),
        ],
      ),
    );
  }
}
