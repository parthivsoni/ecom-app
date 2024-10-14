import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_with_verified_icon.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECartItem extends StatelessWidget {
  const ECartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// images
        ERoundedImage(
          imageUrl: EImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(ESizes.sm),
          backgroundColor: EHelperFunctions.isDarkMode(context)
              ? EColors.darkerGrey
              : EColors.light,
        ),
        SizedBox(
          width: ESizes.spaceBtwItems,
        ),
    
        // title , price, & size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EBrandTitleWithVerifiedIcon(title: "Wrogn"),
              EProductTitleText(
                title: "Blue denim shirt",
                maxLines: 1,
              ),
    
              // attributes
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Color', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Green', style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Size', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'IND 42', style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
