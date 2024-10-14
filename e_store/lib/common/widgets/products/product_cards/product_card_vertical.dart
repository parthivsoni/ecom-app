import 'package:e_store/common/styles/shadows.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_with_verified_icon.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/common/widgets/texts/product_title_text.dart';
import 'package:e_store/features/shop/screens/product_details/product_detail.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 150,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            ERoundedContainer(
                height: 180,
                padding: const EdgeInsets.all(ESizes.sm),
                backgroundColor: dark ? EColors.dark : EColors.light,
                child: Stack(
                  children: [
                    const ERoundedImage(
                      imageUrl: EImages.productImage1,
                      applyImageRadius: true,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
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
                )),
            SizedBox(height: ESizes.spaceBtwItems / 2),
            // details
            Padding(
              padding: const EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EProductTitleText(
                    title: "Blue Denim Shirt",
                    smallSize: true,
                  ),
                  SizedBox(height: ESizes.spaceBtwItems/2,),
                  EBrandTitleWithVerifiedIcon(
                    title: 'Wrogn',  
                  ),
                ],
              ),
            ),
            Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price
                      Padding(
                        padding: const EdgeInsets.only(left: ESizes.sm),
                        child: EPRoductPriceText(price: '35.0',),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: EColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ESizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(ESizes.productImageRadius),
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
                      //
                    ],
                  )
          ],
        ),
      ),
    );
  }
}






