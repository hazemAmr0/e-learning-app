

import 'package:e_learning/view/screens/corse/course_Screen_Body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CourseScreenBody();
  }
}

// class FilterChipWidget extends StatefulWidget {
//   final String label;

//   FilterChipWidget({required this.label});

//   @override
//   _FilterChipWidgetState createState() => _FilterChipWidgetState();
// }

// class _FilterChipWidgetState extends State<FilterChipWidget> {
//   bool isSelected = false; // To track whether the chip is selected

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20, top: 10),
//       child: InkWell(
//         onTap: () {
//           setState(() {
//             isSelected = !isSelected; // Toggle selection
//           });
//         },
//         child: Container(
//          height: 28.h,
//          width: 73.w,
//           decoration: BoxDecoration(
//             color: isSelected
//                 ? Colors.white
//                 : Colors.blue, // Change background color
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(color: Colors.blue), // Add border if necessary
//           ),
//           child: Center(
//             child: Text(
//               widget.label,
//               style: GoogleFonts.dmSans(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 12,
//                 color: isSelected
//                     ? Colors.blue
//                     : Colors.white, // Change text color
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
