import 'package:flutter/material.dart';
import 'package:login_screen/components/my_textfield.dart';
import 'package:login_screen/src/shared/themes/color_schemes.g.dart';
import 'package:login_screen/views/home_page_top.dart';
import 'package:lottie/lottie.dart';
import '../components/my_loggin_button.dart';

class LoginPageView extends StatelessWidget {
  String email = '';
  String password = '';
// Controllers de Login e Senha

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    // sign in method
    void signUserIn() {
       
    }

    return Scaffold(
      backgroundColor: lightColorScheme.secondaryContainer,
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                //
                //animation
                Lottie.network(
                  'https://assets5.lottiefiles.com/packages/lf20_0akluyjw.json',
                  width: 300,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 25),
                // Message from back using it
                const SizedBox(height: 25),
                //username
                MyTextFieldComponent(
                    controller: usernameController,
                    hintText: 'Email',
                    obscureText: false,
                    opacity: 0.8),
                const SizedBox(height: 25),
                //password
                MyTextFieldComponent(
                    controller: usernameController,
                    hintText: 'Password',
                    obscureText: true,
                    opacity: 0.8),
                const SizedBox(height: 35),
                //login
                MyButtonComponent(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 30),
                //forget password
                const Center(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color color1 = HexColor("#222831");
Color color2 = HexColor("#b74093");
Color color3 = HexColor("#88b74093");
