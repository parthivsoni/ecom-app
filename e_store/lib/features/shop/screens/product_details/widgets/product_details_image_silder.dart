import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductImageSilder extends StatelessWidget {
  const EProductImageSilder({
    super.key
  });


  @override
  Widget build(BuildContext context) {
     final dark = EHelperFunctions.isDarkMode(context);
    return ECurvedEdgesWidget(
      child: Container(
        color: dark ? EColors.darkerGrey : EColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding:
                      const EdgeInsets.all(ESizes.productImageRadius * 2),
                  child: Center(
                      child: 
                      Image(
                          image: AssetImage(EImages.productImage1))
                          ),
                )),
            // Image Silder
            Positioned(
              right: 0,
              bottom: 30,
              left: ESizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  itemCount: 5,
                  itemBuilder: (_, index) => ERoundedImage(
                    width: 80,
                    backgroundColor: dark ? EColors.dark : EColors.white,
                    imageUrl: EImages.productImage1,
                    border: Border.all(color: EColors.primary),
                    padding: const EdgeInsets.all(ESizes.sm),
                  ),
                ),
              ),
            ),
    
            // Appbar
            const EAppBar(
              showBackArrow: true,
              actions: [
                ECircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
