import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDescription extends StatelessWidget {
  const CourseDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 40, left: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  infoDetilsText(
                    label: '1.hour 30 min',
                    icon: IconlyLight.timeCircle,
                  ),
                  infoDetilsText(label: '5 lessons', icon: IconlyLight.video),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  infoDetilsText(label: '4.5 (5k)', icon: IconlyLight.star),
                  infoDetilsText(
                      label: '20k students', icon: IconlyLight.profile),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Text(
              'Lectus vitae lorem luctus mostie vitae mbi curabitur magna facilisis turpis nullam nibh gfas ultricies purus molestie quis impert id agger adipiscing molestie auctor arcu ium  atd eget faucibus quis id!',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColor.coolGray,
              )),
        )
      ],
    );
  }
}

class infoDetilsText extends StatelessWidget {
  const infoDetilsText({
    required this.icon,
    required this.label,
    super.key,
  });
  final String label;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: AppColor.coolGray,
        ),
        const SizedBox(width: 4),
        Text(label,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColor.coolGray,
            )),
      ],
    );
  }
}
