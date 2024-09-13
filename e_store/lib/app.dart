import "package:e_store/features/authentication/controller.onboarding/widgets/onbording_skip.dart";
import "package:e_store/features/authentication/screens/onboarding/onboarding.dart";
import "package:e_store/utils/theme/theme.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}
