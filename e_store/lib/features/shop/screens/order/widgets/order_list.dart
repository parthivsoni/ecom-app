import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EOrderListItems extends StatelessWidget {
  const EOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_,index) => const SizedBox(height: ESizes.spaceBtwItems),
      itemBuilder: (_, index) =>  ERoundedContainer(
        showBorder: true,
        padding:const EdgeInsets.all(ESizes.md),
        backgroundColor: dark ? EColors.dark : EColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // 1.Icon
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: ESizes.spaceBtwItems / 2,
                ),
      
                // 2. status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: EColors.primary, fontWeightDelta: 1),
                      ),
                      Text('10 Nov 2024' , style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
      
                // 3- Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: ESizes.iconSm,))
              ],
            ),
      
            const SizedBox(height: ESizes.spaceBtwItems,),
      
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1.Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                  
                      // 2. status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order' , style: Theme.of(context).textTheme.labelMedium,),
                            Text('[#256f2]' , style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      // 1.Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                  
                      // 2. status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date' , style: Theme.of(context).textTheme.labelMedium,),
                            Text('15 Nov 2024' , style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
