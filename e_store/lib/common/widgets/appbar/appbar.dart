import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/device/device_utility.dart';
// import 'package:e_store/utils/device/device_utility.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPress,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    final dark=EHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left,color: dark ? EColors.white : EColors.dark,))
            : leadingIcon != null ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon)) : null,
            title: title,
            actions: actions,
      ),
    );
  }
  

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
  

}
