// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Navbar extends StatefulWidget {
//   const Navbar({Key? key}) : super(key: key);
//
//   @override
//   State<Navbar> createState() => _NavbarState();
// }
//
// class _NavbarState extends State<Navbar> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
//   static const List<Widget> = <Widget>[
//     Text(
//       'Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Likes',
//       style: optionStyle,
//     ),
//     Text(
//       'Search',
//       style: optionStyle,
//     ),
//     Text(
//       'Profile',
//       style: optionStyle,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 20,
//             color: Colors.black.withOpacity(.1),
//           )
//         ],
//       ),
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//           child: GNav(
//             rippleColor: Colors.grey[300]!,
//             hoverColor: Colors.grey[100]!,
//             gap: 8,
//             activeColor: Colors.black,
//             iconSize: 24,
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             duration: Duration(milliseconds: 400),
//             tabBackgroundColor: Colors.grey[100]!,
//             color: Colors.black,
//             tabs: [
//               const GButton(
//                 icon: FontAwesomeIcons.dumbbell,
//                 text: 'Home',
//               ),
//               const GButton(
//                 icon: FontAwesomeIcons.personRunning,
//                 text: 'Search',
//               ),
//               const GButton(
//                 icon: FontAwesomeIcons.heartPulse,
//                 text: 'Likes',
//               ),
//               const GButton(
//                 icon: FontAwesomeIcons.user,
//                 text: 'Profile',
//               ),
//             ],
//             selectedIndex: _selectedIndex,
//             onTabChange: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
