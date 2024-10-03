import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/core/utils/widgets/show_succses_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const SignUpButton({
    required this.label,
    Key? key,
    required this.formKey,
  }) : super(key: key);
final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       if (formKey.currentState!.validate()) {
      
          // If the form is valid, proceed with submission
          showdialog(context);
        }
      },
      child: Container(
       height: 55.h,
       width: 327.w,
        decoration: BoxDecoration(
          color: AppColor.brightBlue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.dmSans(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
