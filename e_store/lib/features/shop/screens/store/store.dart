import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/appbar/tabbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/brands/all_brands.dart';
import 'package:e_store/features/shop/screens/store/widgets/category_tab.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            ECartCounterIcon(onPressed: () {}, iconColor: EColors.black)
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: EHelperFunctions.isDarkMode(context)
                      ? EColors.black
                      : EColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.all(ESizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        // search bar
                        SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),
                        ESearchContainer(
                          text: 'search in store',
                          padding: EdgeInsets.zero,
                          showBorder: true,
                          showBackground: false,
                        ),
                        SizedBox(
                          height: ESizes.spaceBtwSections,
                        ),

                        // feature brands
                        ESectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          onPressed: () => Get.to(() => AllBrandsScreen()),
                        ),
                        SizedBox(
                          height: ESizes.spaceBtwItems / 1.5,
                        ),

                        EGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return EBrandCard(
                                showBorder: false,
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: ETabBar(
                    tabs: [
                      Tab(
                        child: Text("Sports"),
                      ),
                      Tab(
                        child: Text("Furniture"),
                      ),
                      Tab(
                        child: Text("Electronics"),
                      ),
                      Tab(
                        child: Text("Clothes"),
                      ),
                      Tab(
                        child: Text("Cosmetics"),
                      ),
                    ],
                  ))
            ];
          },
          body: TabBarView(
            children: [
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
              ECategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
