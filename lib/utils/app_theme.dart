import 'package:flutter/material.dart';
import 'package:npc/utils/colorz.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colorz.screenBackground,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colorz.screenBackground,
      elevation: 0.0,
      iconTheme: const IconThemeData(
        color: Colorz.main,
      ),
      titleSpacing: double.minPositive,
      titleTextStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: Colorz.textPrimary,
            fontWeight: FontWeight.w600,
          ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colorz.screenBackground,
      selectedItemColor: Colorz.main,
      unselectedItemColor: Colorz.textSecondary,
      showUnselectedLabels: true,
      elevation: 0.0,
      type: BottomNavigationBarType.shifting,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colorz.main,
      selectionColor: Colorz.textSelection,
      selectionHandleColor: Colorz.main,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 15,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colorz.main,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colorz.main,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(
          color: Colorz.main,
        ),
      ),
    ),
    textTheme: GoogleFonts.interTextTheme().copyWith(),
  );
}
