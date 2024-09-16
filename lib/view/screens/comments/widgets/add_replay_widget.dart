import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddReplayWidget extends StatelessWidget {
  const AddReplayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1 Replies',
            style: GoogleFonts.dmSans(
              color: AppColor.coolGray,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: AppColor.brightBlue),
            onPressed: () {},
            child: Text(
              'Add reply',
              style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
