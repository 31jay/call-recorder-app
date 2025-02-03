import 'package:flutter/material.dart';
import 'package:call_recorder_app/Themes/theme.dart';
import 'package:provider/provider.dart';
import 'package:call_recorder_app/Providers/theme_provider.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<AppThemeProvider>(context, listen: true);
    final ThemeData currentTheme = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: AppBackground.getWallpaper(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: Heights.elevatedButtonHeight(context),
                child: ElevatedButton(
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                  style: currentTheme.elevatedButtonTheme.style,
                  child: Text(
                    'Get Started',
                    style: TextStyles.elevatedButtonText,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
