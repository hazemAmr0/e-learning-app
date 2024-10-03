import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/Courses/widgets/selector_item.dart';
import 'package:flutter/material.dart';

class Selectors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        color: AppColor.brightBlue,
        borderRadius: BorderRadius.circular(14),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectorItem(label: 'Class Schedule'),
              SizedBox(width: 5),
              SelectorItem(label: 'Studying'),
              SizedBox(width: 5),
              SelectorItem(label: 'Saved'),
            ],
          ),
        ),
      ),
    );
  }
}
