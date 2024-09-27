import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/common/widgets/texts/e_brand_title_with_verified_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/enums.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
        padding: EdgeInsets.all(ESizes.sm),
        showBorder: true,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // icon property
            Flexible(
              child: ECircularImage(
                isNetworkImage: false,
                image: EImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    EHelperFunctions.isDarkMode(
                            context)
                        ? EColors.white
                        : EColors.black,
              ),
            ),
            SizedBox(
              width: ESizes.spaceBtwItems / 2,
            ),
    
            // Txts
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  EBrandTitleWithVerifiedIcon(
                    title: 'Wrogn',
                    brandTextSizes: TextSizes.large,
                  ),
                  SizedBox(
                    height: ESizes.sm,
                  ),
                  Text(
                    "256 Products dvdfbdfbdfb",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
