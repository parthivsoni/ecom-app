import 'package:e_store/common/widgets/success_screen/success_screen.dart';
import 'package:e_store/features/authentication/screens/login/login.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(EImages.verifyEmail),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              // Title & SubTitle
              Text(
                ETexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                'support@codingwitht.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                ETexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              // Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(
                      () =>SuccessScreen(image: EImages.createAccount, title: ETexts.yourAccountCreatedTitle, subTitle: ETexts.yourAccountCreatedSubTitle, onPressed: () => Get.to(() =>  LoginScreen()),
                       
                      ),
                    ),
                    child: const Text("Continue"),
                  )),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Resend Email"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
