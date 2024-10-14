import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(EImages.profileImage1),
                ),
                const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                Text(
                  "Parthiv",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// revieww
        Row(
          children: [
            ERatingBarIndicator(
              rating: 4,
            ),
            SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              "01 Sept, 2024",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        ReadMoreText(
          "The user Interface of this app is such a fentabulous and you have done a great job. Keep doing this kind of apps.",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: "show less",
          trimCollapsedText: "show more",
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
        ),
        SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// compney review
        ERoundedContainer(
          backgroundColor: dark ? EColors.darkGrey : EColors.grey,
          child: Padding(
            padding: EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "E's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      "02 sept, 2024",
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                SizedBox(
                  height: ESizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "The user Interface of this app is such a fentabulous and you have done a great job. Keep doing this kind of apps.",
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: "show less",
                  trimCollapsedText: "show more",
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: ESizes.spaceBtwSections,
        )
      ],
    );
  }
}
