import 'package:e_learning/core/routing/route_names.dart';
import 'package:e_learning/core/utils/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String instructor;
  final int price;
  final int hours;
  final String image;

  CourseCard(
      {required this.title,
      required this.instructor,
      required this.price,
      required this.hours,
      required this.image, required String lessons, required String rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
Navigator.pushNamed(context, Routes.courseDetails);
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Container(
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(image),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title,
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    SizedBox(height: 5),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person, size: 20),
                        Text(instructor,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: AppColor.Gray,
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '\$${price.toString()}',
                          style: GoogleFonts.dmSans(
                            color: Colors.blue, // Add your desired color
                            fontSize: 16, // Add your desired font size
                            fontWeight:
                                FontWeight.bold, // Add your desired font weight
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 20,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                hours.toString(),
                                style: GoogleFonts.dmSans(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('hours',
                                  style: GoogleFonts.dmSans(
                                    color: Colors.white,
                                    fontSize: 12,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
