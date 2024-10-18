import 'package:e_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_store/common/widgets/texts/section_heading.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBillingPaymentSection extends StatelessWidget {
  const EBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ESectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: ESizes.spaceBtwItems / 2),
        Row(
          children: [
            ERoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: EHelperFunctions.isDarkMode(context) ? EColors.light : EColors.black,
              child: const Image(image: AssetImage(EImages.paypal), fit: BoxFit.contain,),              
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,)
          ],
        )
      ],
    );
  }
}