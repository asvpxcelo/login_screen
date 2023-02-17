import 'package:flutter/material.dart';
import 'package:login_screen/src/shared/themes/color_schemes.g.dart';
import 'package:login_screen/views/home_page_cards.dart';
import 'components/add_new_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: lightColorScheme.primaryContainer
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.white
            ),
            backgroundColor: lightColorScheme.primaryContainer,
            minimumSize: const Size(double.infinity, 56),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
            )
          )
        )
      ),
      home: HomePageCards(),
    );
    
  }
}