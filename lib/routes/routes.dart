import 'package:flutter/material.dart';

import '../onboarding.dart';
import '../screens/dashboard/dashboard_screen.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String onboarding = '/onboarding';

  static Map<String, WidgetBuilder> define() {
    return {
      dashboard: (context) => const DashboardScreen(),
      onboarding: (context) => const OnboardingPage(),
    };
  }
}