import 'package:e_learning/view/screens/corse/widgets/category_card.dart';

import 'package:flutter/cupertino.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryCard(
            title: 'Language',
            assetName: 'assets/images/languageimage.svg',
          ),
         
          CategoryCard(
            title: 'Painting',
            assetName: 'assets/images/paintingimage.svg',
          ),
          // Add more CategoryCard widgets as needed
        ],
      ),
    );
  }
}
