// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  Widget iconLeft;
  final void Function()? onPressed;
  Widget iconRight;
  final void Function()? onPressed2;
   Header({
    super.key,
    required this.iconLeft,
    required this.onPressed,
    required this.onPressed2,
    required this.iconRight,
  });
  
  @override
  /// Builds a header with a left and right icon and a language button
  /// in the middle.
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left icon button
        IconButton(
          onPressed: onPressed,
          icon: iconLeft,
          color: Colors.black,
          iconSize: 20,
        ),
        // Language button
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Language text and icon
              Row(
                children: [
                  const Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'English',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // Drawer icon on the right
              const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
        // Right icon button
        IconButton(
          onPressed: onPressed2,
          icon: iconRight,
          color: Colors.black,
          iconSize: 20,
        ),
      ],
    );
  }

}
