import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(const MaterialApp(
    home: PlanetsPage(),
  ));
}

class PlanetsPage extends StatelessWidget {
  const PlanetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
