import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/botton_add_to_cart_widget.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_details_image_silder.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_store/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: EBottonAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. - Product Image Silder
            EProductImageSilder(),

            // 2. - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: ESizes.defaultSpace,
                  left: ESizes.defaultSpace,
                  bottom: ESizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Sharing button
                  ERatingAndShare(),

                  // Price,Title,Stock & Brand
                  EProductMetaData(),

                  //Attribute
                  EProductAttributes(),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  //checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  //Description
                  ESectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'This is Product decription for the shirt blue shirt s size dwduwdnubdnuidb whdhwuidweuibd wdhwudhqewuiid wdhqwuidhwiud',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show More',
                    trimExpandedText: 'Less',
                    moreStyle:TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: ESizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ESectionHeading(title: 'Reviews(199)',showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => ProductReviewsScreen()), icon: const Icon(Iconsax.arrow_right_3,size: 18,)),
                    ],
                  ),
                  
                  const SizedBox(height: ESizes.spaceBtwSections,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
