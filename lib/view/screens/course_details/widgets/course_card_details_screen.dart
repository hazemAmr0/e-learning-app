import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCardDetailsScreen extends StatelessWidget {
  const CourseCardDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/course.png',
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        'Introduction to Comic Drawing',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        // maxLines: 2,
                        //overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text('lesson 1',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Eu lacus ornare sollicitudin dolor mauris fbib fen dum tritique massa euiod suspe mauris nunc ac felis orcieu soft lectus nibh vulputate urna ut sed neque',
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColor.coolGray,
              ),
            )
          ],
        ),
      ),
    );
  }
}
