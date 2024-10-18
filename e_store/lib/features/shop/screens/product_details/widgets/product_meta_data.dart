import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_with_verified_icon.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Sale Tag
            ERoundedContainer(
              radius: ESizes.sm,
              backgroundColor: EColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                  horizontal: ESizes.sm, vertical: ESizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: EColors.black),
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems,),
            // Price
            Text("\$250",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .apply(decoration: TextDecoration.lineThrough)),
            SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            EPRoductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),

        // Title
        EProductTitleText(title: 'Green Apple'),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),

        // // Stock Status
        Row(
          children: [
            EProductTitleText(title: 'Status'),
            SizedBox(
              width: 8,
            ),
             Text('In Stock',style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
       
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        // // Brand

        Row(
          children: [
            ECircularImage(image:EImages.cosmaticsIcon,width: 32,height: 32,overlayColor: darkMode ? EColors.white: EColors.black,),
           const EBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSizes: TextSizes.medium,),
          ],
        )

      ],
    );
  }
}
