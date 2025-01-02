import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}

// Pro Tip
// theme: ThemeData(
//   textTheme: GoogleFonts.montserratTextTheme().copyWith(
//     headline1: TextStyle(fontSize: 32, color: Colors.red),
//     bodyText1: TextStyle(fontSize: 18, color: Colors.grey),
//   ),
// ),
// if you have big project and you need control

