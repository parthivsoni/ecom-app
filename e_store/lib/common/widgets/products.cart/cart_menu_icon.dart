import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            )),
        Positioned(
          top: 5,
          right: 1,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: EColors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(
                        color: EColors.white,
                        fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
