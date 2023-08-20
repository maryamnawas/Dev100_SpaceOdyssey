import 'package:flutter/material.dart';
import 'package:space_odyssey/confirmationPass.dart';
import 'package:space_odyssey/landingPage.dart';
import 'package:space_odyssey/morePage.dart';
import 'package:space_odyssey/paymentMethod.dart';
import 'package:space_odyssey/planetsPage.dart';
import 'package:space_odyssey/seatSelection.dart';
import 'package:space_odyssey/ticketMars.dart';
import 'package:space_odyssey/tripsPage.dart';
import 'package:flutter_svg/svg.dart';
import 'homePage.dart';
import 'marsWeather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConfirmationPass(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const PlanetsPage(),
    const TripsPage(),
    const MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/discover.svg',
                  width: 24,
                  height: 24,
                  color: _currentIndex == 0 ? const Color(0xff8446ff) : Colors.black,
                ),
                Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 12,
                      color: _currentIndex == 0 ? const Color(0xff8446ff) : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/compass.svg',
                  width: 24,
                  height: 24,
                  color: _currentIndex == 1 ? const Color(0xff8446ff) : Colors.black,
                ),
                Text(
                    "Planets",
                    style: TextStyle(
                      fontSize: 12,
                      color: _currentIndex == 1 ? const Color(0xff8446ff) : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/calendar.svg',
                  width: 24,
                  height: 24,
                  color: _currentIndex == 2 ? const Color(0xff8446ff) : Colors.black,
                ),
                Text(
                    "Trips",
                    style: TextStyle(
                      fontSize: 12,
                      color: _currentIndex == 2 ? const Color(0xff8446ff) : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/layoutgrid.svg',
                  width: 24,
                  height: 24,
                  color: _currentIndex == 3 ? const Color(0xff8446ff) : Colors.black,
                ),
                Text(
                    "More",
                    style: TextStyle(
                      fontSize: 12,
                      color: _currentIndex == 3 ? const Color(0xff8446ff) : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                ),
              ],
            ),
            label: '',
          ),
        ],
        backgroundColor: const Color(0xff12171D),
        selectedItemColor: const Color(0xff12171D), // Set the selected item color
        unselectedItemColor: const Color(0xff12171D),
      ),

    );
  }
}
