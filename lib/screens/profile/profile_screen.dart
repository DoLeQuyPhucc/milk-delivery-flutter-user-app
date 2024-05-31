import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../components/flutter_flow_util.dart';
import '../../components/flutter_flow_theme.dart';
import '../../components/nav/nav.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

  static _ProfileScreenState of(BuildContext context) =>
      context.findAncestorStateOfType<_ProfileScreenState>()!;
}

class _ProfileScreenState extends State<ProfileScreen> {
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
  }

  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
    FlutterFlowTheme.saveThemeMode(mode);
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'ExampleProject',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}
