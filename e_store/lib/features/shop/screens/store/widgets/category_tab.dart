import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/brand_showcase.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
      Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            // Brands
            EBrandShowcase(
              images: [
                EImages.productImage1,
                EImages.cosmaticsIcon,
                EImages.createAccount
              ],
            ),
            SizedBox(
              height: ESizes.spaceBtwItems,
            ),
            EBrandShowcase(
              images: [
                EImages.createAccount,
                EImages.clothIcon,
                EImages.sportIcon
              ],
            ),
            SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            // Products you may like
            ESectionHeading(
              title: "You might like",
              showActionButton: true,
              onPressed: () {},
            ),
            SizedBox(
              height: ESizes.spaceBtwItems,
            ),

            EGridLayout(
                itemCount: 4, itemBuilder: (_, index) => EProductCardVertical())
          ],
        ),
      ),
    ]);
  }
}
