import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_store/common/widgets/list_tile/settings_list_tile.dart';
import 'package:e_store/common/widgets/list_tile/user_profile_tile.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/features/personalization/screens/profile/profile.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  --Header
            EPrimaryHeaderContainer(
                child: Column(
              children: [
                EAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(
                                color:
                                    const Color.fromRGBO(255, 255, 255, 1)))),

                // User Profile Card
                EUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: ESizes.spaceBtwSections,
                ),
              ],
            )),
            //  -- Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  /// --Account Settings
                  ESectionHeading(title: 'Account Settings',showActionButton: false,),
                  SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add remove products and move to checkout',
                    onTap: () {},
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Order',
                    subtitle: 'In-progress and Completes Orders',
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'List of all te discounted coupons',
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Set any kind of notification message',
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                  ),

                  // App Settings
                  SizedBox(height: ESizes.spaceBtwSections,),
                  ESectionHeading(title: 'App Settings',showActionButton: false,),
                  SizedBox(height: ESizes.spaceBtwItems,),
                  ESettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Upload Data to your Firebase',
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  ESettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  // 
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                  const SizedBox(height: ESizes.spaceBtwSections *2.5,)
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}
