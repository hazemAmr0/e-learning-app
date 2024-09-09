import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildActionButton(
              label: 'Sign up',
              backgroundColor:  AppColor.brightBlue,
              textColor: Colors.white,
              onPressed: () {
                // Handle sign-up logic here
              },
            ),
            const SizedBox(width: 20),
            _buildActionButton(
              label: 'Log in',
              backgroundColor: Colors.white,
              textColor: AppColor.brightBlue,
              borderColor: AppColor.brightBlue,
              onPressed: () {
                // Handle login logic here
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    Color? borderColor,
    required VoidCallback onPressed,
  }) {
    return Container(
      height: 50,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backgroundColor,
        border: borderColor != null ? Border.all(color: borderColor) : null,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
