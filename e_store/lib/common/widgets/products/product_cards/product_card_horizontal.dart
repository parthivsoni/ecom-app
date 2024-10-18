import 'package:e_store/common/styles/shadows.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_with_verified_icon.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardHorizontal extends StatelessWidget {
  const EProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ESizes.productImageRadius),
        color: dark ? EColors.darkerGrey : EColors.lightContainer,
      ),
      child: Row(
        children: [
          // thumbnail of product

          ERoundedContainer(
            height: 120,
            padding: EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: ERoundedImage(
                    backgroundColor: EColors.lightGrey,
                    imageUrl: EImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                // sale tag
                Positioned(
                  top: 12,
                  child: ERoundedContainer(
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
                ),
                const Positioned(
                  right: 0,
                  top: 0,
                  child: ECircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),

          // details
          SizedBox(
              width: 172,
              child: Padding(
                  padding: EdgeInsets.only(top: ESizes.sm, left: ESizes.sm),
                  child: Column(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            EProductTitleText(
                              title: 'Blue Denim sport Shirt',
                              smallSize: true,
                            ),
                            SizedBox(
                              height: ESizes.spaceBtwItems / 2,
                            ),
                            EBrandTitleWithVerifiedIcon(title: 'Alen solly')
                          ]),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(child: EPRoductPriceText(price: "256.0")),

                          // add to cart
                          Container(
                            decoration: BoxDecoration(
                                color: EColors.dark,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(ESizes.cardRadiusMd),
                                  bottomRight: Radius.circular(
                                      ESizes.productImageRadius),
                                )),
                            child: SizedBox(
                                height: ESizes.iconLg * 1.2,
                                width: ESizes.iconLg * 1.2,
                                child: Center(
                                    child: Icon(
                                  Iconsax.add,
                                  color: EColors.white,
                                ))),
                          )
                        ],
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
