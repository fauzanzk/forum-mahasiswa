import "package:flutter/material.dart";

import "./Pages/Login.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Konnect", home: const LoginPage());
  }
}
