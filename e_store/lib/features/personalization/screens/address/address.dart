import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/features/personalization/screens/address/add_new_address.dart';
import 'package:e_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: EColors.primary,
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: Icon(
          Iconsax.add,
          color: EColors.white,
        ),
      ),
      appBar: EAppBar(
        title: Text(
          "Addresses",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(children: [
            ESingleAddress(selectedAddress: false),
            ESingleAddress(selectedAddress: true),
          ],),
        ),
      ),
    );
  }
}
