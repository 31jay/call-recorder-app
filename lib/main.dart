import 'package:call_recorder_app/Screens/home_page.dart';
import 'package:call_recorder_app/Screens/login_screen.dart';
import 'package:call_recorder_app/Themes/theme.dart';
import 'package:call_recorder_app/navigator_observer.dart';
import "package:flutter/material.dart";
import 'package:call_recorder_app/Screens/display_screen.dart';
import 'package:call_recorder_app/Providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  Widget _buildApp(AppThemeProvider themeProvider) {
    return MaterialApp(
      title: 'Call Recorder',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      navigatorObservers: [MyRouteObserver()],
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const DisplayScreen(),
              settings: settings,
            );
          case '/home':
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
              settings: settings,
            );
          case '/login':
            return MaterialPageRoute(
              builder: (_) => const LoginScreen(),
              settings: settings,
            );
          default:
            return MaterialPageRoute(
              builder: (_) => const DisplayScreen(),
              settings: settings,
            );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppThemeProvider(),
      child: Consumer<AppThemeProvider>(
        builder: (context, themeProvider, child) => _buildApp(themeProvider),
      ),
    );
  }
}
