import 'package:e_store/common/widgets/appbar/appbar.dart';
import 'package:e_store/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_store/common/widgets/products/cart/cart_item.dart';
import 'package:e_store/common/widgets/texts/product_price_text.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => SizedBox(
            height: ESizes.spaceBtwSections,
          ),
          itemCount: 10,
          itemBuilder: (_, index) => Column(
            children: [
              ECartItem(),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Row(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: Text('Checkout \$256.0'),),
      ),
    );
  }
}


