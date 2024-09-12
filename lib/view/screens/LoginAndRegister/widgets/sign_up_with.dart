import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sign_up_with extends StatelessWidget {
  Sign_up_with({
    required this.prefixIcon,
    required this.backgroundColor,
    required this.label,
    super.key,
  });
  final String label;
  Color? backgroundColor;
  Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0), // Add some padding to the left
              child: prefixIcon,
            ),
            const SizedBox(
                width: 30), // Add some space between the icon and the text
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
