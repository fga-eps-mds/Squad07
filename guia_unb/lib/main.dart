import 'package:flutter/material.dart';
import 'package:guia_unb/pages/category/category_page.dart';
import 'package:guia_unb/pages/doubt/doubt_page.dart';
import 'package:guia_unb/pages/initial_page.dart';
import 'package:guia_unb/pages/onboarding/onboarding_page.dart';
import 'package:guia_unb/pages/splash/splash_page.dart';
import 'package:provider/provider.dart';

import '../core/config/routes/routes.dart';
import '../core/config/theme/app_theme.dart';
import 'core/providers/load_data.dart';

void main() {
  runApp(const GuiaUnB());
}

class GuiaUnB extends StatelessWidget {
  const GuiaUnB({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoadData(),
      child: MaterialApp(
        theme: AppTheme.appTheme(),
        darkTheme: AppTheme.appThemeDark(),
        routes: {
          Routes.splash: (_) => const SplashPage(),
          Routes.onboarding: (_) => const OnboardingPage(),
          Routes.home: (_) => const InitialPage(),
          Routes.category: (_) => const CategoryPage(),
          Routes.doubt: (_) => const DoubtPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
