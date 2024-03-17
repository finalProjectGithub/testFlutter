import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: const Column(
        children: [
          Text("Login",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
