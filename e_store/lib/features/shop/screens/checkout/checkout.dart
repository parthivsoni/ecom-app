import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/products/cart/coupon_widget.dart';
import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_store/features/shop/screens/checkout/widgets/bnilling_amount_section.dart';
import 'package:e_store/navigation_menu.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const ECartItems(showAddRemoveButton: false),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              // Coupon TextFiled
              ECouponCode(),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              // Billing Section
              ERoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(ESizes.md),
                backgroundColor: dark ? EColors.black : EColors.white,
                child: Column(
                  children: [
                    // Pricing
                    EBillingAamountSection(),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    // Divider
                    const Divider(),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    // Payment Method
                    EBillingPaymentSection(),
                    const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    // Address
                    EBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
               image: EImages.successfulpayment, 
               title: 'Payment Succes!', 
               subTitle: 'Your item will be shipped soon!', 
               onPressed: () => Get.offAll(() => const NavigationMenu()),
               
              )),
          child: Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
