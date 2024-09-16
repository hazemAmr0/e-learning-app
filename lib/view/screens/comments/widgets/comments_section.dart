import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentsSection extends StatelessWidget {
  const CommentsSection({super.key, required this.name, required this.isTeacher, required this.comment, required this.image});
final String name;
final bool isTeacher;
final String comment;
final String image;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                 CircleAvatar(
                  backgroundColor: AppColor.primaryColor,
                  radius: 25,
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('11 mins ago',
                            style: GoogleFonts.dmSans(
                              color: AppColor.coolGray,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(width: 40),
                     isTeacher?Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: AppColor.brightBlue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text('teacher',
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                            ): Text('Student',
                                style: GoogleFonts.dmSans(
                                  color: AppColor.coolGray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SizedBox(
                width: 300,
                child: Text(
                    comment,
                    style: GoogleFonts.dmSans(
                      color: AppColor.coolGray,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 45, right: 30),
              child: Row(
                children: [
                  Text('Liked',
                      style: GoogleFonts.dmSans(
                        color: AppColor.brightBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  const SizedBox(width: 40),
                  Text('Reply',
                      style: GoogleFonts.dmSans(
                        color: AppColor.coolGray,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                  const Spacer(),
                  Row(
                    children: [
                      const Icon(
                        Icons.thumb_up_off_alt_outlined,
                        color: AppColor.brightBlue,
                      ),
                      const SizedBox(width: 8),
                      Text('11',
                          style: GoogleFonts.dmSans(
                            color: AppColor.brightBlue,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}