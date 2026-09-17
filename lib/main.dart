<<<<<<< HEAD
import "package:flutter/material.dart";

import "Pages/login.dart";
=======
import 'package:coba_aja/Pages/profile.dart';
import 'package:coba_aja/Pages/searchresult.dart';
import 'package:flutter/material.dart';

import 'Pages/profile.dart';

// import 'Pages/searchresult.dart';
>>>>>>> 6b8e799b47c000340b0e3dc44c8765e624b73b34

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(title: "Konnect", home: const LoginPage());
=======
    return MaterialApp(
      title: 'Profil App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      // Ubah ProfilePage menjadi SearchResultPage agar muncul saat di F5
      home: const ProfilePage(),
    );
>>>>>>> 6b8e799b47c000340b0e3dc44c8765e624b73b34
  }
}
