import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text("helloo"),
          Card(
            color: Colors.green, // Grey background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 5, // Adds shadow to the card
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                // indicator: BoxDecoration(
                //   borderRadius: BorderRadius.circular(12),
                //   color: Colors.blueGrey
                // ),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 30),
                tabs: const [
                  Tab(
                    child: Text(
                      "Overview", style: TextStyle(color: Colors.red),
                    ),
                  ),
                  Tab(
                    child: Text(
                    "Tickets", style: TextStyle(color: Colors.pink),
                  ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: TabBarView(
            controller: tabController,
            children: [
              Column(
                children: [
                  Container(
                    width: screenWidth,
                    height: 241,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff12171d)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/lunareagle.png',
                            width: 113, // Adjust the width to your preference
                            height: 44, // Adjust the height to your preference
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                          ),


                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children:  [
                              Column(
                                children: const [
                                  Text("PEK",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "8.40 AM",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                              Column(
                                children:  const [
                                  SizedBox(
                                    width: 100, // Make the container stretch to full width
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 0.2,
                                    ),
                                  ),
                                  Text(
                                      "Direct",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("MARS",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "23/12/60",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: screenWidth, // Make the container stretch to full width
                            child: const Divider(
                              color: Colors.white,
                              thickness: 0.2,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: const Color(0xff8346ff)),
                                    child:  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/bitcoin.png',
                                          width: 17, // Adjust the width to your preference
                                          height: 17, // Adjust the height to your preference
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '10.00',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ],
                                    ),),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '/pax',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                ],
                              ),

                              Container(
                                width: 100,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: const Color(0xff8346ff)),
                                child: const Center(
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenWidth,
                    height: 241,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff12171d)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/spacesailor.png',
                            width: 113, // Adjust the width to your preference
                            height: 44, // Adjust the height to your preference
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                          ),


                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children:  [
                              Column(
                                children: const [
                                  Text("JFK",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "8.40 AM",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                              Column(
                                children:  const [
                                  SizedBox(
                                    width: 100, // Make the container stretch to full width
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 0.2,
                                    ),
                                  ),
                                  Text(
                                      "Direct",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("MARS",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "27/12/60",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: screenWidth, // Make the container stretch to full width
                            child: const Divider(
                              color: Colors.white,
                              thickness: 0.2,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: const Color(0xff8346ff)),
                                    child:  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/bitcoin.png',
                                          width: 17, // Adjust the width to your preference
                                          height: 17, // Adjust the height to your preference
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '10.00',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ],
                                    ),),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '/pax',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                ],
                              ),

                              Container(
                                width: 100,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: const Color(0xff8346ff)),
                                child: const Center(
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: screenWidth,
                    height: 241,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xff12171d)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/astrosprint.png',
                            width: 113, // Adjust the width to your preference
                            height: 44, // Adjust the height to your preference
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                          ),


                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children:  [
                              Column(
                                children: const [
                                  Text("LAX",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "8.40 AM",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                              Column(
                                children:  const [
                                  SizedBox(
                                    width: 100, // Make the container stretch to full width
                                    child: Divider(
                                      color: Colors.white,
                                      thickness: 0.2,
                                    ),
                                  ),
                                  Text(
                                      "Direct",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      )
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("MARS",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "6/01/61",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: screenWidth, // Make the container stretch to full width
                            child: const Divider(
                              color: Colors.white,
                              thickness: 0.2,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 36,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: const Color(0xff8346ff)),
                                    child:  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/images/bitcoin.png',
                                          width: 17, // Adjust the width to your preference
                                          height: 17, // Adjust the height to your preference
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '10.00',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                          ),),
                                      ],
                                    ),),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    '/pax',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),),
                                ],
                              ),

                              Container(
                                width: 100,
                                height: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: const Color(0xff8346ff)),
                                child: const Center(
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                ),),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                width: screenWidth,
                height: 241,
              ),
            ],
          ))
        ],
      ),
    );
  }
}


// Container(
//     width: screenWidth,
//     height: 241,
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(4),
//         color: Color(0xff12171d)),
//   child: Padding(
//     padding: const EdgeInsets.only(
//         top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset(
//           'assets/images/lunareagle.png',
//           width: 113, // Adjust the width to your preference
//           height: 44, // Adjust the height to your preference
//           fit: BoxFit.cover,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//
//
//         Row(
//           mainAxisAlignment:
//           MainAxisAlignment.spaceBetween,
//           children:  [
//             Column(
//               children: const [
//                 Text("PEK",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "8.40 AM",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//             Column(
//               children:  const [
//                 SizedBox(
//                   width: 100, // Make the container stretch to full width
//                   child: Divider(
//                     color: Colors.white,
//                     thickness: 0.2,
//                   ),
//                 ),
//                 Text(
//                     "Direct",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                     )
//                 ),
//               ],
//             ),
//             Column(
//               children: const [
//                 Text("MARS",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "23/12/60",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         SizedBox(
//           width: screenWidth, // Make the container stretch to full width
//           child: const Divider(
//             color: Colors.white,
//             thickness: 0.2,
//           ),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 36,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: const Color(0xff8346ff)),
//                   child:  Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Image.asset(
//                         'assets/images/bitcoin.png',
//                         width: 17, // Adjust the width to your preference
//                         height: 17, // Adjust the height to your preference
//                         fit: BoxFit.cover,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Text(
//                         '10.00',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                     ],
//                   ),),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 const Text(
//                   '/pax',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                   ),),
//               ],
//             ),
//
//             Container(
//               width: 100,
//               height: 36,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(4),
//                   color: const Color(0xff8346ff)),
//               child: const Center(
//                 child: Text(
//                   'Book Now',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                   ),),
//               ),),
//           ],
//         ),
//
//       ],
//     ),
//   ),
// ),
// const SizedBox(
//   height: 20,
// ),
// Container(
//   width: screenWidth,
//   height: 241,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(4),
//       color: Color(0xff12171d)),
//   child: Padding(
//     padding: const EdgeInsets.only(
//         top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset(
//           'assets/images/spacesailor.png',
//           width: 113, // Adjust the width to your preference
//           height: 44, // Adjust the height to your preference
//           fit: BoxFit.cover,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//
//
//         Row(
//           mainAxisAlignment:
//           MainAxisAlignment.spaceBetween,
//           children:  [
//             Column(
//               children: const [
//                 Text("JFK",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "8.40 AM",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//             Column(
//               children:  const [
//                 SizedBox(
//                   width: 100, // Make the container stretch to full width
//                   child: Divider(
//                     color: Colors.white,
//                     thickness: 0.2,
//                   ),
//                 ),
//                 Text(
//                     "Direct",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                     )
//                 ),
//               ],
//             ),
//             Column(
//               children: const [
//                 Text("MARS",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "27/12/60",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         SizedBox(
//           width: screenWidth, // Make the container stretch to full width
//           child: const Divider(
//             color: Colors.white,
//             thickness: 0.2,
//           ),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 36,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: const Color(0xff8346ff)),
//                   child:  Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Image.asset(
//                         'assets/images/bitcoin.png',
//                         width: 17, // Adjust the width to your preference
//                         height: 17, // Adjust the height to your preference
//                         fit: BoxFit.cover,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Text(
//                         '10.00',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                     ],
//                   ),),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 const Text(
//                   '/pax',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                   ),),
//               ],
//             ),
//
//             Container(
//               width: 100,
//               height: 36,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(4),
//                   color: const Color(0xff8346ff)),
//               child: const Center(
//                 child: Text(
//                   'Book Now',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                   ),),
//               ),),
//           ],
//         ),
//
//       ],
//     ),
//   ),
// ),
// const SizedBox(
//   height: 20,
// ),
// Container(
//   width: screenWidth,
//   height: 241,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(4),
//       color: Color(0xff12171d)),
//   child: Padding(
//     padding: const EdgeInsets.only(
//         top: 25.0, bottom: 10.0, left: 20.0, right: 20.0),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Image.asset(
//           'assets/images/astrosprint.png',
//           width: 113, // Adjust the width to your preference
//           height: 44, // Adjust the height to your preference
//           fit: BoxFit.cover,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//
//
//         Row(
//           mainAxisAlignment:
//           MainAxisAlignment.spaceBetween,
//           children:  [
//             Column(
//               children: const [
//                 Text("LAX",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "8.40 AM",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//             Column(
//               children:  const [
//                 SizedBox(
//                   width: 100, // Make the container stretch to full width
//                   child: Divider(
//                     color: Colors.white,
//                     thickness: 0.2,
//                   ),
//                 ),
//                 Text(
//                     "Direct",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                     )
//                 ),
//               ],
//             ),
//             Column(
//               children: const [
//                 Text("MARS",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                     )),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                     "6/01/61",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                     )
//                 )
//               ],
//             ),
//           ],
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         SizedBox(
//           width: screenWidth, // Make the container stretch to full width
//           child: const Divider(
//             color: Colors.white,
//             thickness: 0.2,
//           ),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Container(
//                   width: 100,
//                   height: 36,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: const Color(0xff8346ff)),
//                   child:  Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Image.asset(
//                         'assets/images/bitcoin.png',
//                         width: 17, // Adjust the width to your preference
//                         height: 17, // Adjust the height to your preference
//                         fit: BoxFit.cover,
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       const Text(
//                         '10.00',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w700,
//                         ),),
//                     ],
//                   ),),
//                 const SizedBox(
//                   width: 5,
//                 ),
//                 const Text(
//                   '/pax',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.white,
//                     fontWeight: FontWeight.w400,
//                   ),),
//               ],
//             ),
//
//             Container(
//               width: 100,
//               height: 36,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(4),
//                   color: const Color(0xff8346ff)),
//               child: const Center(
//                 child: Text(
//                   'Book Now',
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                   ),),
//               ),),
//           ],
//         ),
//
//       ],
//     ),
//   ),
// ),
// const SizedBox(
//   height: 20,
// ),