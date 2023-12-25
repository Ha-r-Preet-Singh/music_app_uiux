import 'package:flutter/material.dart';
import 'package:music_app_uiux/components/my_button.dart';
import 'package:music_app_uiux/components/my_text_field.dart';
import 'package:music_app_uiux/screens/login_screen.dart';




class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPass = false;
  bool showConfirm = false;
  showPassword(){
    setState(() {

      showPass = !showPass;
    });
  }
  showConfPass(){
    setState(() {
      showConfirm = !showConfirm;
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
              MyTextField(hintText: "Name"),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              MyTextField(
                hintText: "Confirm Password",
                onPressed: showConfPass,
                obsecureText: showConfirm ? false : true,
                icon: showConfirm ? Icons.visibility_off : Icons.visibility,
              ),


              SizedBox(
                height: 30,
              ),
              MyButton(customColor: Color.fromARGB(255, 10, 185, 121),
                  text: "Sign Up",
                  onTap: (){

                  }
              ),
              SizedBox(
                height: 20,
              ),
              Text("Or Sign Up With",
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
                  Text("Already have an account",style: TextStyle(
                    color: Colors.white,
                  ),),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                    child: Text("LOG IN",style: TextStyle(
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
