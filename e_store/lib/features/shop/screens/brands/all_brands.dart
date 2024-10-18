import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/brands/e_brand_card.dart';
import 'package:e_store/common/widgets/layouts/grid_layout.dart';
import 'package:e_store/common/widgets/products/sortable/sortable_products.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/brands/brand_products.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          "All Brands",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ESectionHeading(
                title: 'Brands',
                showActionButton: true,
              ),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              /// brands
              EGridLayout(
                  mainAxisExtent: 80,
                  itemCount: 10,
                  itemBuilder: (context, index) => EBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
