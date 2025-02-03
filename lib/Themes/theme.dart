import 'package:flutter/material.dart';

// Define branding colors
class AppColors {
  static const Color lightPrimary = Color(0xFFDB3E6C);
  static const Color darkPrimary = Color(0xFFB83257);
  static const Color lightBackground = Colors.white;
  static const Color darkBackground = Color(0xFF1E1E1E);
}

class Heights {
  static double elevatedButtonHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.06;
  }
}

class FontSize {
  static const double buttonText = 15;
}

class TextStyles {
  static TextStyle elevatedButtonText = const TextStyle(
    fontSize: FontSize.buttonText,
    fontWeight: FontWeight.bold,
  );
}

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.lightPrimary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
      headlineMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
      labelSmall: TextStyle(fontSize: 12, color: Colors.black38),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: Colors.white,
        // backgroundColor: Colors.white,
        // foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.darkPrimary,
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white70),
      headlineMedium: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white70),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.white70),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.white60),
      labelSmall: TextStyle(fontSize: 12, color: Colors.white38),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimary,
        foregroundColor: Colors.white,
        // backgroundColor: Colors.black,
        // foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      elevation: 4,
      iconTheme: IconThemeData(color: Colors.white),
    ),
  );
}

// Wallpaper background setup
class AppBackground {
  static BoxDecoration getWallpaper() {
    return const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/app_images/carousel_image.png"),
        fit: BoxFit.cover,
      ),
      color: AppColors.darkBackground, // Fallback color
    );
  }
}
