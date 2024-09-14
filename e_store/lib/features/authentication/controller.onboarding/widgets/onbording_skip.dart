import 'package:e_store/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight(),
        right: ESizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: TextButton(onPressed: () => OnboardingController.instance.skipPage(),child:  const Text('Skip')),
        ));
  }
}
