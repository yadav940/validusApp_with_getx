import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:validus/ui/usefull/palette.dart';
import 'package:validus/ui/views/validus_page.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(_getMaterialApp);
}

GetMaterialApp get _getMaterialApp => GetMaterialApp(
      title: 'YuvaPay',
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      fallbackLocale:
          const Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      theme: _themeData,
      defaultTransition: Transition.rightToLeftWithFade,


      home: ValidusPage(),
    );

ThemeData get _themeData => ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      canvasColor: Color(0xFF171734),
      fontFamily: 'Test Founders Grotesk',
      scaffoldBackgroundColor: Color(0xFF171734),
      accentColor: Color(0xFFFFC700),

      inputDecorationTheme: inputDecorationTheme,
      iconTheme: IconThemeData(color: Color(0xFFFFC700)),
      textTheme: textTheme,
    );

InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Palette.greyScaleLight0.withOpacity(1),
          width: 1,
        ),
      ),
      counterStyle: GoogleFonts.spaceGrotesk(
        height: 1,
        fontSize: 18,
        color: Palette.greyScaleDark2.withOpacity(0.5),
      ),
    );

/// [caption] for form label,
/// [bodyText1] for form text, i.e. inputText, dropdown text etc,
TextTheme get textTheme => const TextTheme(
      // Used for Form Labels
      caption: TextStyle(
        height: 1.1,
        fontSize: 10,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
        color: Color(0xFFD2D2D2),
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        height: 17 / 14,
        color: Color(0xFFD2D2D2),
        fontWeight: FontWeight.w400,
      ),

      bodyText2: TextStyle(
        fontSize: 14,
        height: 17 / 14,
        color: Palette.greyScaleDark0,
        fontWeight: FontWeight.w400,
      ),
    );
