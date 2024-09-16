import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ResourcesForDownloadWidget extends StatelessWidget {
  const ResourcesForDownloadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Row(
        children: [
          Text(
            'PDF',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: AppColor.coolGray,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '2.5 MB',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: AppColor.coolGray,
            ),
          ),
        ],
      ),
      leading: SvgPicture.asset(
        'assets/images/pdf.svg',
      ),
      title: Text(
        'practice class sketches',
        style: GoogleFonts.dmSans(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      trailing: Icon(
        IconlyLight.download,
        color: AppColor.coolGray,
      ),
      onTap: () {},
    );
  }
}
