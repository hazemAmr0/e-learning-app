import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';

// Bestseller Badge Shape Widget
class BestsellerBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BestsellerClipper(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: AppColor.brightBlue, // You can change the color
        child: const Text(
          'BESTSELLER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

// Custom Clipper for the Bestseller Shape
class BestsellerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double cornerRadius = 8.0;

    // Start from the top-left corner
    path.moveTo(0, cornerRadius);

    // Top left rounded corner
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    // Top line
    path.lineTo(size.width - 20, 0); // Leaving some space for the arrow

    // Arrow shape on the right
    path.lineTo(size.width, size.height / 2);

    // Bottom line
    path.lineTo(size.width - 20, size.height);

    // Bottom left rounded corner
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
