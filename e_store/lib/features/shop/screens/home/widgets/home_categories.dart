import 'package:e_store/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';


class EHomeCategories extends StatelessWidget {
  const EHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EVerticalImageText(
            image: EImages.clothIcon,
            title: "Clothes",
            onTap: () => {},
          );
        },
      ),
    );
  }
}