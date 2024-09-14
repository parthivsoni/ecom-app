import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_store/common/widgets/images/e_rounded_image.dart';
import 'package:e_store/features/shop/controllers/home_controller.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlidder extends StatelessWidget {
  const EPromoSlidder({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index)),
            items: banners
                .map((url) => ERoundedImage(imageUrl: url))
                .toList()),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                ECircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? EColors.primary
                      : EColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
