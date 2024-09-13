import 'package:e_store/features/authentication/screens/signup/widget/terms_condition_checkbox.dart';
import 'package:e_store/features/authentication/screens/signup/widget/verify_email.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: ETexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwInputFeilds,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: ETexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFeilds,
        ),
        // username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: ETexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFeilds,
        ),
        // Email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: ETexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFeilds,
        ),
        // Phonr Number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: ETexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFeilds,
        ),
        //  Password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: ETexts.password,
              prefixIcon: Icon(Iconsax.password_check)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFeilds,
        ),
        // TermsCondition Checkbox
        TermsAndConditionCheckbox(),
        const SizedBox(
          height: ESizes.spaceBtwSections,
        ),
        // Sign up button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() =>const VerifyEmailScreen()),
              child: const Text(ETexts.createAccount)),
        )
      ],
    ));
  }
}
