import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  final bool agreedToTerms;
  final Function(bool?) onChanged;

  TermsAndConditionsCheckbox(
      {required this.agreedToTerms, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: agreedToTerms,
          onChanged: onChanged,
        ),
        Expanded(
          child: Text(
              'By creating an account, you agree\n with our terms & conditions',style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:AppColor.coolGray,
              ),),
        ),
      ],
    );
  }
}
