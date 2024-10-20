import 'package:e_store/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:e_store/features/authentication/controller.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_store/features/authentication/controller.onboarding/widgets/onboarding_next_button.dart';
import 'package:e_store/features/authentication/controller.onboarding/widgets/onbording_page.dart';
import 'package:e_store/features/authentication/controller.onboarding/widgets/onbording_skip.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          // horizontal scrollable pages
          PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                    image: EImages.shopping,
                    title: ETexts.onBoardingTitle1,
                    subTitle: ETexts.onBordingSubTitle1),
                OnBoardingPage(
                    image: EImages.payment,
                    title: ETexts.onBoardingTitle2,
                    subTitle: ETexts.onBordingSubTitle2),
                OnBoardingPage(
                    image: EImages.delivery,
                    title: ETexts.onBoardingTitle3,
                    subTitle: ETexts.onBordingSubTitle3),
              ]),

          // slip button
          const onBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          OnBordingNextButton()
        ],
      ),
    );
  }
}
