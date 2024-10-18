import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          "Sub Category",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              // banner
              ERoundedImage(
                imageUrl: EImages.promoBanner3,
                applyImageRadius: true,
                width: double.infinity,
                height: null,
              ),
              SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              // sub categories
              Column(
                children: [
                  ESectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: ESizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) {
                        return EProductCardHorizontal();
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
              SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

              Column(
                children: [
                  ESectionHeading(
                    title: 'Sports Shoes',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: ESizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) {
                        return EProductCardHorizontal();
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),

              SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

              Column(
                children: [
                  ESectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        width: ESizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) {
                        return EProductCardHorizontal();
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
