
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(108)),
          child: IconButton(
              onPressed: () {},
              icon:const Image(
                width: ESizes.iconMd,
                height: ESizes.iconMd,
                image: AssetImage(EImages.google),
              )),
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
         Container(
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(108)),
          child: IconButton(
              onPressed: () {},
              icon:const Image(
                width: ESizes.iconMd,
                height: ESizes.iconMd,
                image: AssetImage(EImages.facebook),
              )),
        ),
      ],
    );
  }
}



