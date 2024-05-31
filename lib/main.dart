import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:milk_delivery_flutter_user_app/onboarding.dart';
import 'package:milk_delivery_flutter_user_app/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'components/flutter_flow_theme.dart';
import 'components/flutter_flow_util.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ));

  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingPage(),
      routes: {
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
