import 'package:call_recorder_app/Themes/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Text('Home Page'),
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
                    Navigator.pushNamed(context, '/init');
                  },
                  style: Theme.of(context).elevatedButtonTheme.style,
                  child: Text(
                    'Back',
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
