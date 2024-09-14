import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_button.dart';
import 'package:e_store/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                ETexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              // Form
             const SignupForm(),
              const SizedBox(height: ESizes.spaceBtwSections,),
              // Divider
              FormDivider(dividerText: ETexts.orSignUpWith.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections,),
              // Social buttons
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

