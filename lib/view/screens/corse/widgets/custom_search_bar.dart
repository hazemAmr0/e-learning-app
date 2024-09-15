
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Find Course",
          hintStyle: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          suffixIcon: Image.asset(
            'assets/images/filter.png',
            scale: 4,
          ),
          // suffix: Image.asset('assets/images/filter.png',height: 20,width: 20,color: Colors.black,),
          prefixIcon: const Icon(IconlyLight.search, color: Colors.black),
          //suffixIcon: const Icon(IconlyBold.filter2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
