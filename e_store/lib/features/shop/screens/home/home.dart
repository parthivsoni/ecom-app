import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_store/features/shop/screens/home/widgets/promo_slidder.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                )
              ],
            )),
            // Body part
            Padding(
                padding: EdgeInsets.all(ESizes.defaultSpace),
                child: EPromoSlidder(banners: [
                  EImages.promoBanner1,
                  EImages.promoBanner2,
                  EImages.promoBanner3,
                ],)),
          ],
        ),
      ),
    );
  }
}

