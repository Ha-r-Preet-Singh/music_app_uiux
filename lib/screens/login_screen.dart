import 'package:flutter/material.dart';
import 'package:music_app_uiux/components/my_button.dart';
import 'package:music_app_uiux/components/my_text_field.dart';
import 'package:music_app_uiux/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  bool checkTheBox = false;
  check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 18, 18),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/radio_wave_beta.png",
                color: Color.fromARGB(255, 10, 181, 121),
                width: 300,
              ),
              SizedBox(
                height: 40,
              ),
              MyTextField(hintText: "Email or Username"),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                hintText: "Password",
                onPressed: showPassword,
                obsecureText: showPass ? false : true,
                icon: showPass ? Icons.visibility_off : Icons.visibility,
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(

                        children: [
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Colors.grey[500],
                            ),
                            child: Checkbox(
                              checkColor: Colors.white,
                              value: checkTheBox ? true : false,
                              onChanged: (value) {
                                check();
                              },
                            ),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],

                      ),
                      Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 10, 181, 121),
                            fontWeight: FontWeight.bold),

                      ),



                    ],
                  ),

              ),
              SizedBox(
                height: 20,
              ),
              MyButton(customColor: Color.fromARGB(255, 10, 185, 121),
                  text: "Sign In",
                  onTap: (){

                  }
              ),
              SizedBox(
                height: 20,
              ),
              Text("Or Sign In With",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,

              ),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Image.asset("assets/facebook.png",width: 50,),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Image.asset("assets/google.png",width: 50,),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade700),
                    ),
                    child: Icon(Icons.apple_rounded,color: Colors.white.withOpacity(0.5),size: 50,),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account",style: TextStyle(
                    color: Colors.white,
                  ),),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                    },
                    child: Text("REGISTER",style: TextStyle(
                      color: Color.fromARGB(255, 10, 185, 121),
                      fontWeight: FontWeight.bold,
                    ),),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
