import 'package:flutter/material.dart';
import 'package:music_app_uiux/components/my_button.dart';
import 'package:music_app_uiux/screens/login_screen.dart';
import 'package:music_app_uiux/screens/signup_screen.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/radio_wave_beta.png",
                  color: Color.fromARGB(255, 10, 181, 121),
                  width: 400,
                ),
                SizedBox(height: 40,),
                MyButton(
                    customColor: Colors.white.withOpacity(0.7),
                    text: "Sign In",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    }),
                SizedBox(
                  height: 20,
                ),
                MyButton(
                    customColor: Color.fromARGB(255, 10, 181, 121),
                    text: "Create an account",
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));

                    }),
              ],
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms of use",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
