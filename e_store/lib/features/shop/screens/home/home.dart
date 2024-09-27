import 'package:e_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widgets/promo_slidder.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EPrimaryHeaderContainer(
                child: Column(
              children: [
                // -- App Bar
                EHomeAppBar(),
                SizedBox(
                  height: ESizes.spaceBtwSections,
                ),

                // -- Search bar
                ESearchContainer(
                  text: "Search in e-store",
                ),
                SizedBox(
                  height: ESizes.spaceBtwSections,
                ),
                // -- Categories
                Padding(
                  padding: EdgeInsets.only(left: ESizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      ESectionHeading(
                        title: "Popular Categories",
                        showActionButton: false,
                        textColor: EColors.white,
                      ),
                      SizedBox(
                        height: ESizes.spaceBtwItems,
                      ),
                      // Categories
                      EHomeCategories()
                    ],
                  ),
                ),
                SizedBox(
                  height: ESizes.spaceBtwSections,
                ),
              ],
            )),
            // Body part
            Padding(
                padding: EdgeInsets.all(ESizes.defaultSpace),
                child: Column(
                  children: [
                    EPromoSlidder(
                      banners: [
                        EImages.promoBanner1,
                        EImages.promoBanner2,
                        EImages.promoBanner3,
                      ],
                    ),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    ESectionHeading(
                      title: 'Popular Products',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    EGridLayout(
                      itemCount: 2,
                      itemBuilder: (_, index) => EProductCardVertical(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
