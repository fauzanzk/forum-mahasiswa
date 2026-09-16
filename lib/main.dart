import 'package:coba_aja/Pages/profile.dart';
import 'package:coba_aja/Pages/searchresult.dart';
import 'package:flutter/material.dart';

import 'Pages/profile.dart';

// import 'Pages/searchresult.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
      // Ubah ProfilePage menjadi SearchResultPage agar muncul saat di F5
      home: const ProfilePage(),
    );
  }
}
