import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDetailScreenAppBar extends StatelessWidget {
  const CustomDetailScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 10, right: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
          const Spacer(),
          Text('Details',
              style: GoogleFonts.dmSans(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              )),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_outline),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
