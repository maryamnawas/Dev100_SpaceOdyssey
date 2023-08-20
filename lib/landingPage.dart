import 'package:flutter/material.dart';
import 'package:space_odyssey/LoginPage.dart';

void main() {
  runApp(const MaterialApp(
    home: LandingPage(),
  ));
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  const LoginPage()),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/index.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

