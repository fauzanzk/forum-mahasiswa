import 'package:flutter/material.dart';
import './Home.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const HomePage())
)
        }, 
        child: child
        )
        )
      );
  }
}
