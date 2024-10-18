import 'package:e_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAamountSection extends StatelessWidget {
  const EBillingAamountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'Subtotal',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              '\$256.0',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),

        // Shipping Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),

        //  Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),

        // Order Total
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              'Order Total',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
            Text(
              '\$6.0',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}
