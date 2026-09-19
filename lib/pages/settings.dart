import 'package:flutter/material.dart';
import 'help.dart'; // Menggunakan help.dart sesuai nama file Anda

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Pengaturan',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildSectionHeader('PENGATURAN AKUN'),
          _buildSettingsItem(
            icon: Icons.account_circle,
            title: 'u/NotNiyanaka',
            onTap: () {},
          ),
          
          _buildSectionHeader('KONNECT PREMIUM'),
          _buildSettingsItem(
            icon: Icons.security,
            title: 'Dapatkan Premium',
            onTap: () {},
          ),

          _buildSectionHeader('ALAT BISNIS'),
          _buildSettingsItem(
            icon: Icons.pie_chart_outline,
            title: 'Coba Konnect Pro',
            subtitle: 'Pemantauan tren',
            onTap: () {},
          ),
          _buildSettingsItem(
            icon: Icons.campaign_outlined,
            title: 'Beriklan di Konnect',
            onTap: () {},
          ),

          _buildSectionHeader('OPSI BERANDA'),
          ListTile(
            leading: const Icon(Icons.dark_mode_outlined, color: Colors.black),
            title: const Text('Mode Gelap', style: TextStyle(fontSize: 16)),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
              activeColor: Colors.blue,
            ),
          ),

          _buildSectionHeader('PENGATURAN BAHASA'),
          _buildSettingsItem(
            icon: Icons.translate,
            title: 'Bahasa dan terjemahan',
            onTap: () {},
          ),

          _buildSectionHeader('OPSI TAMPILAN'),
          _buildSettingsItemWithTrailingText(
            icon: Icons.view_agenda_outlined,
            title: 'Tampilan default',
            trailingText: 'Kartu',
            onTap: () {},
          ),
          _buildSettingsItemWithTrailingText(
            icon: Icons.image_outlined,
            title: 'Thumbnail',
            trailingText: 'Default',
            onTap: () {},
          ),

          _buildSectionHeader('AKSESIBILITAS'),
          _buildSettingsItem(
            icon: Icons.play_circle_outline,
            title: 'Media dan animasi',
            onTap: () {},
          ),

          _buildSectionHeader('DUKUNGAN'),
          _buildSettingsItem(
            icon: Icons.help_outline,
            title: 'Bantuan',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BantuanPage()),
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // (Method _buildSectionHeader, _buildSettingsItem, dll tetap sama seperti sebelumnya)
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildSettingsItem(
      {required IconData icon,
      required String title,
      String? subtitle,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      subtitle: subtitle != null
          ? Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.grey))
          : null,
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildSettingsItemWithTrailingText(
      {required IconData icon,
      required String title,
      required String trailingText,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(trailingText,
              style: const TextStyle(color: Colors.grey, fontSize: 14)),
          const SizedBox(width: 4),
          const Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: onTap,
    );
  }
}
