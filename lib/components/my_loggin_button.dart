import 'package:flutter/material.dart';
import 'package:login_screen/src/shared/themes/color_schemes.g.dart';

class MyButtonComponent extends StatelessWidget {
      final Function()? onTap;
      const MyButtonComponent({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: lightColorScheme.primary, borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16),
          ),
        ),
      ),
    );
  }
}