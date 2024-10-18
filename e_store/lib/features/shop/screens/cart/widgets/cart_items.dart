import 'package:e_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_store/common/widgets/products/cart/cart_item.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: ESizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          // Cart Item
          ECartItem(),
          if (showAddRemoveButton) const SizedBox(height: ESizes.spaceBtwItems),

          // Add Remove Button Row With Total Price
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    EProductQuantityWithAddRemove(),
                  ],
                ),
                EPRoductPriceText(price: '256')
              ],
            )
        ],
      ),
    );
  }
}
