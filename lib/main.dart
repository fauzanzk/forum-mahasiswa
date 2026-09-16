import 'package:flutter/material.dart';
import 'Pages/profile.dart'; // Import halaman profil yang sudah dipisah

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(), // Memanggil ProfilePage dari file profile.dart
    );
  }
}
