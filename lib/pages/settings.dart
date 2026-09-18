import 'package:flutter/material.dart';

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
          'Settings',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildSectionHeader('ACCOUNT SETTINGS'),
          _buildSettingsItem(
            icon: Icons.account_circle,
            title: 'u/NotNiyanaka',
            onTap: () {},
          ),
          
          _buildSectionHeader('KONNECT PREMIUM'),
          _buildSettingsItem(
            icon: Icons.security,
            title: 'Get Premium',
            onTap: () {},
          ),

          _buildSectionHeader('BUSINESS TOOLS'),
          _buildSettingsItem(
            icon: Icons.pie_chart_outline,
            title: 'Try Konnect Pro',
            subtitle: 'Trend monitoring',
            onTap: () {},
          ),
          _buildSettingsItem(
            icon: Icons.campaign_outlined,
            title: 'Advertise on Konnect',
            onTap: () {},
          ),

          _buildSectionHeader('FEED OPTIONS'),
          ListTile(
            leading: const Icon(Icons.dark_mode_outlined, color: Colors.black),
            title: const Text('Banana Counter', style: TextStyle(fontSize: 16)),
            trailing: Switch(
              value: false, // Diset statis false karena StatelessWidget
              onChanged: (value) {
                // Biarkan kosong untuk sementara karena ini stateless
              },
              activeColor: Colors.blue,
            ),
          ),

          _buildSectionHeader('LANGUAGE SETTINGS'),
          _buildSettingsItem(
            icon: Icons.translate,
            title: 'Language and translations',
            onTap: () {},
          ),

          _buildSectionHeader('VIEW OPTIONS'),
          _buildSettingsItemWithTrailingText(
            icon: Icons.view_agenda_outlined,
            title: 'Default view',
            trailingText: 'Card',
            onTap: () {},
          ),
          _buildSettingsItemWithTrailingText(
            icon: Icons.image_outlined,
            title: 'Thumbnails',
            trailingText: 'Default',
            onTap: () {},
          ),

          _buildSectionHeader('ACCESSIBILITY'),
          _buildSettingsItem(
            icon: Icons.play_circle_outline,
            title: 'Media and animations',
            onTap: () {},
          ),
          const SizedBox(height: 30), // Padding bawah
        ],
      ),
    );
  }

  // Widget pembantu agar kode lebih rapi di dalam StatelessWidget
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
