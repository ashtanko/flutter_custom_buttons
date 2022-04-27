import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  /// Light style
  static ThemeData get light {
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      disabledColor: Colors.grey[500],
      appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: Colors.blueGrey,
        secondary: Colors.pink,
        onSecondary: Colors.white,
      ),
      buttonTheme: base.buttonTheme.copyWith(buttonColor: Colors.deepPurple),
      primaryColor: Colors.green,
      scaffoldBackgroundColor: Colors.white70,
      textTheme: GoogleFonts.robotoTextTheme(textTheme.copyWith(
        button: textTheme.button?.copyWith(color: Colors.black87),
      )),
    );
  }

  /// Dark style
  static ThemeData get dark {
    final base = ThemeData.dark();
    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: const Color(0xFF6A4F4B),
        secondary: Colors.deepPurple,
      ),
      primaryColorDark: const Color(0xFF102027),
      disabledColor: Colors.grey[500],
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: Colors.deepPurple,
      ),
      primaryColor: const Color(0xFF102027),
      scaffoldBackgroundColor: Colors.white12,
      textTheme: GoogleFonts.robotoTextTheme(textTheme.copyWith(
        button: textTheme.button?.copyWith(color: Colors.white),
      )),
    );
  }

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;

    return textTheme.copyWith(
        button: base.textTheme.button?.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ));
  }
}
