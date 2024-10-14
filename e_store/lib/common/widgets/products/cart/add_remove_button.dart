import 'package:e_store/common/widgets/icons/e_circular_icon.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EProductQuantityWithAddRemove extends StatelessWidget {
  const EProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ECircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: ESizes.md,
          color: EHelperFunctions.isDarkMode(context)
              ? EColors.darkerGrey
              : EColors.light,
          backgroundColor: EHelperFunctions.isDarkMode(context)
              ? EColors.darkGrey
              : EColors.light,
        ),
        SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        ECircularIcon(
            icon: Iconsax.add,
            width: 32,
            height: 32,
            size: ESizes.md,
            color: EHelperFunctions.isDarkMode(context)
                ? EColors.darkerGrey
                : EColors.light,
            backgroundColor: EColors.primary),
      ],
    );
  }
}