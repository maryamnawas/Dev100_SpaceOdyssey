import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MorePage(),
  ));
}

class MorePage extends StatelessWidget {
  const MorePage({super.key});

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
          Positioned.fill(
            top: 50,
            left: 10,
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                onPressed: () {
                  // Implement navigation drawer or custom action
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 20, right: 20.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 50.0),
                  width: screenWidth,
                  height: 610,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xff808080),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 45,
                        ),
                        const Text(
                          "Ian Henderson",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/beijing.png",
                              width: 10,
                              height: 10,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Beijing",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/astronaut.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              "Personal Data",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/booking.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text("Current Booking",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/pasttrips.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              "Past Trips",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/card.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text("Payment Method",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/settings.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              "Settings",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/support.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              "Customer Support",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/logout.png",
                              width: 28,
                              height: 27,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const Text(
                              "Log Out",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/imageIcon.png",
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
