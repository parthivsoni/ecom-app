import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(ESizes.md),
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          const EBrandCard(showBorder: false),
          SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          // brand top 3 products images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
      child: ERoundedContainer(
    height: 100,
    padding: EdgeInsets.all(ESizes.md),
    margin: EdgeInsets.only(right: ESizes.sm),
    backgroundColor:
        EHelperFunctions.isDarkMode(context) ? EColors.light : EColors.darkGrey,
    child: Image(
      fit: BoxFit.contain,
      image: AssetImage(image),
    ),
  ));
}
