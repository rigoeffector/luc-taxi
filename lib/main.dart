import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData _buildTheme(brightness) {
      var baseTheme = ThemeData(brightness: brightness);

      return baseTheme.copyWith(
        dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
        ),
        // useMaterial3: true,
        // dividerColor: mTextColor,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: const MaterialColor(0xFF00BFA6, {
            50: Color(0xFF00BFA6),
            100: Color(0xFF00BFA6),
            200: Color(0xFF00BFA6),
            300: Color(0xFF00BFA6),
            400: Color(0xFF00BFA6),
            500: Color(0xFF00BFA6),
            600: Color(0xFF00BFA6),
            700: Color(0xFF00BFA6),
            800: Color(0xFF00BFA6),
            900: Color(0xFF00BFA6),
          }),
          brightness: brightness,
        ),
        textTheme: GoogleFonts.nunitoSansTextTheme(baseTheme.textTheme),
      );
    }

    return MaterialApp.router(
      routerConfig: AppNavigation.router,
      debugShowCheckedModeBanner: false,
      title: 'Riders',
      themeMode: ThemeMode.system,
      theme: _buildTheme(Brightness.light),
    );
  }
}
