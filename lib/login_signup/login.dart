import 'package:flutter/material.dart';
import 'package:hydroviz/login_signup/login_Button.dart';
import 'package:hydroviz/login_signup/login_TextField.dart';
import 'package:hydroviz/utils/app_style.dart';

class Login extends StatelessWidget {
  Login({super.key});

  // Controllers for the Text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HydroViz', style: TextStyle(color: Colors.white),),
        backgroundColor: AppColors.alternate,
      ),
      backgroundColor: AppColors.primaryBack,
      body: SafeArea(
        child: Center(
          child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Box to create space in y direction
                  const SizedBox(height: 20),

                  // Login Text
                  const Padding(
                    padding: EdgeInsets.fromLTRB(370, 0, 0, 0),
                    child: Row(
                      children: [
                        Text('Login', style: TextStyle(fontSize: 50)),
                      ],
                    ),
                  ),
                    
                  // Box to create space in y direction
                  const SizedBox(height: 30),

                  // Login Text Field
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 0, 350, 0),
                    child: LoginTextfield(
                      controller: usernameController,
                      textHint: "Email",
                      hideText: false,
                    ) 
                  ),

                  // Box to create space in y direction
                  const SizedBox(height: 40),

                  // Password Text Fielf
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 0, 350, 0),
                    child: LoginTextfield(
                      controller: passwordController,
                      textHint: "Password",
                      hideText: true,
                    ) 
                  ),
                  
                  // Box to create space in y direction
                  const SizedBox(height: 20),

                  // Forgot Password
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 350),
                    child:  Row(
                      
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?', 
                          style: TextStyle()),
                      ],
                    ),
                  ),

                  // Not a member, SignUp
                  const SizedBox(height: 30),
                  const LoginButton(text: 'Sign In', paddingLT: 50,),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('Not a member?'),
                       SizedBox(width: 4),
                       Text('Sign Up', style: TextStyle(color: Colors.blueAccent)),
                    ],
                  )
                ],
              ))),
    );
  }
}