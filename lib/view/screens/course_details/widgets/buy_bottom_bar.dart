import 'package:flutter/material.dart';

class BuyNowBottomBar extends StatelessWidget {
  const BuyNowBottomBar({
    super.key,
    required this.color,
    required this.buttoncolor,
    required this.textcolor,
  });
  final Color? color;
  final Color? buttoncolor;
  final Color textcolor;
  @override
  /// Bottom bar with a buy now button and a favorite button.
  ///
  /// The color of the bar and the color of the button can be customized.
  ///
  /// [color] is the color of the bar.
  /// [buttoncolor] is the color of the button.
  /// [textcolor] is the color of the text.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        // Add shadow to the bottom bar
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 30,
            offset: const Offset(0, -5), // changes the shadow position
          ),
        ],
        // Set the color of the bar
        color: color,
        // Add rounded corners to the bar
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      // Light background color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Favorite Button
          Container(
            height: 50,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius:
                  BorderRadius.circular(25), // Half height for round corners
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 5), // changes the shadow position
                ),
              ],
            ),
            child: const Icon(
              Icons.star_border,
              color: Colors.blue,
            ),
          ),

          // Buy Now Button
          BuyNowButton(
              onPressed: () {},
              buttoncolor: buttoncolor!,
              textcolor: textcolor),
        ],
      ),
    );
  }

}
// buy_now_button.dart

class BuyNowButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttoncolor;
  final Color textcolor;
  const BuyNowButton(
      {super.key,
      required this.onPressed,
      required this.buttoncolor,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          backgroundColor: buttoncolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // Round shape
          ),
          elevation: 10, // Elevation for shadow
          shadowColor: Colors.black.withOpacity(0.2), // Shadow color
        ),
        child: Text(
          'Buy Now',
          style: TextStyle(fontSize: 18, color: textcolor),
        ),
      ),
    );
  }
}
