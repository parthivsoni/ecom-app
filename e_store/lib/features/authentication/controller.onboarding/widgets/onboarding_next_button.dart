import 'package:e_store/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBordingNextButton extends StatelessWidget {
  const OnBordingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark ? EColors.primary : Colors.black),
          child: Icon(Iconsax.arrow_right_3),
        ));
  }
}
