import 'package:e_store/common/styles/spacing_style.dart';
import 'package:e_store/common/widgets/login_signup/form_divider.dart';
import 'package:e_store/common/widgets/login_signup/social_button.dart';
import 'package:e_store/features/authentication/screens/login/widget/login_form.dart';
import 'package:e_store/features/authentication/screens/login/widget/login_header.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EspacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo ,Title & Sub-Title
              LoginHeader(dark: dark),
              // Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: ETexts.orSignInWith.capitalize!,),
              const SizedBox(height: ESizes.spaceBtwSections,),
              // Footer
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
