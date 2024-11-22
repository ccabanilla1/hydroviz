import 'package:flutter/material.dart';
import 'package:hydroviz/login_signup/login_Button.dart';
import 'package:hydroviz/login_signup/login_TextField.dart';
import 'package:hydroviz/utils/app_style.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  // Text Controllers for each Text Field
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HydroViz', style: TextStyle(color: Colors.white)),
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

                  // Sign Up heading
                  const Padding(
                    padding: EdgeInsets.fromLTRB(370, 0, 0, 0),
                    child: Row(
                      children: [
                        Text('SignUp', style: TextStyle(fontSize: 50)),
                      ],
                    ),
                  ),
                    
                  // Box to create space in y direction
                  const SizedBox(height: 30),

                  // First Name Text Field
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 0, 350, 0),
                    child: LoginTextfield(
                      controller: firstNameController,
                      textHint: "First Name",
                      hideText: false,
                    ) 
                  ),

                  // Box to create space in y direction
                  const SizedBox(height: 20),

                  // Last Name Text Field
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 0, 350, 0),
                    child: LoginTextfield(
                      controller: lastNameController,
                      textHint: "Last Name",
                      hideText: false,
                    ) 
                  ),

                  // Box to create space in y direction
                  const SizedBox(height: 40),

                  // Email Text Field
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

                  // Pasword Text Field
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

                  // Confirm Password Text Field
                  Padding(
                    padding: const EdgeInsets.fromLTRB(350, 0, 350, 0),
                    child: LoginTextfield(
                      controller: confirmPasswordController,
                      textHint: "Confirm Password",
                      hideText: true,
                    ) 
                  ),

                  // Sign up Button
                  const SizedBox(height: 30),
                  const LoginButton(text: 'Sign Up', paddingLT: 50,),
                  const SizedBox(height: 30),
                  
                ],
              ))),
    );
  }
}