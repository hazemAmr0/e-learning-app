import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void showdialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: SizedBox(
             height: 280.h,
              child: Column(
                children: [
                  Icon(Icons.check_circle_rounded,
                      color: AppColor.brightBlue, size: 80),
                  Text(
                    'Success',
                    style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Congratulations, you have\n completed your registration!',
                    style: GoogleFonts.dmSans(
                      color: AppColor.coolGray,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                     height: 55.h,
                     width: 259.w,
                      decoration: BoxDecoration(
                        color: AppColor.brightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Done',
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
