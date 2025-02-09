import 'package:flutter/material.dart';
import 'package:call_recorder_app/Themes/theme.dart';
import 'package:call_recorder_app/Screens/permission_request.dart';

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    Navigator.pushReplacementNamed(context, '/login');
                    PermissionRequest.checkPermissions();
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
