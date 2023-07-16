import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_travel_app/views/widget/background_opaque.dart';

import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              body: MainTemplateWidget(
                imageUrl: 'assets/images/topBackground.png',
                gradiantColors:  [Color.fromRGBO(8, 86, 208, 1).withOpacity(0.2),Color.fromRGBO(20, 45, 84, 0.14).withOpacity(0.2),Color.fromRGBO(8, 86, 208, 1).withOpacity(0.2)],
                includeBackButton: false,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.center,
                        child: Text('Bonjour à tous! 👋',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              letterSpacing: -0.2,
                              color: Color(0xFF142D54),
                            ))),
                    const SizedBox(height: 10),
                    const Align(
                        alignment: Alignment.center,
                        child: Text('Bienvenue, connectez-vous à votre compte',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white))),
                    const SizedBox(height: 40),
                    Container(
                      width: MediaQuery.of(context).size.width/ 1.15,
                      height: MediaQuery.of(context).size.height/14.5,
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.only(bottom: 12.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                labelText: 'Email',
                                border: InputBorder.none,
                              ),
                              // Set cursor color
                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/ 1.15,
                      height: MediaQuery.of(context).size.height/14.5,
                      padding: EdgeInsets.all(16.0),
                      margin: EdgeInsets.only(bottom: 12.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Obx(() => TextField(
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  labelText: 'Mot de Passe',
                                  border: InputBorder.none,
                                ),
                                obscureText: !controller.isPasswordVisible.value,
                                // Set cursor color
                                style: TextStyle(
                                  color: Colors.black, // Set text color
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.showPassword();
                            },
                            child:
                            Obx(() =>
                               Icon(
                                controller.isPasswordVisible.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Color(0xFF6B7280),
                              )
                            )

                          ),
                        ],
                      ),
                    ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed("RecuperationPasswordView");
                  },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        // Align text to the left
                        child: Container(
                          height: 28.0,
                          margin: EdgeInsets.fromLTRB(10, 0, 0 , 12),
                          child: Text(
                            'Mot de passe oublié?',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 0.3,
                              color: Color(0xFF0373F3),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width/ 1.15,
                        height: MediaQuery.of(context).size.height/14.5,

                        child: ElevatedButton(
                          onPressed: () {
                            // Perform login action
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0856D0),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(16.0),
                            ),
                          ),
                          child: Text(
                            'S\'identifier',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              letterSpacing: 0.3,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: 1,
                          // Rotate by 180 degrees
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(229, 231, 235, 0),
                                Color(0xFF000000),
                              ],
                              stops: [0, 1],
                            ),
                            border: Border.all(
                                color:
                                Color.fromRGBO(229, 231, 235, 0)),
                            // Adjust the border color
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'OR',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.0,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: Color(0xFF6B7280),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Container(
                          width:  MediaQuery.of(context).size.width / 2.5,
                          height: 1,
                          // Rotate by 180 degrees
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF000000),
                                Color.fromRGBO(229, 231, 235, 0),
                              ],
                              stops: [0, 1],
                            ),
                            border:
                            Border.all(color: Color.fromRGBO(229, 231, 235, 0)),
                            // Adjust the border color
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Handle Google login
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey.withOpacity(0.2)),
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ),
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.height / 16.5,
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/google.png', // Set the path to the Google icon image
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 9.35),
                        InkWell(
                          onTap: () {
                            // Handle Apple login
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey.withOpacity(0.2)),
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ),
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.height / 16.5,
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.apple,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width / 9.35),
                        InkWell(
                          onTap: () {
                            // Handle Facebook login
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.grey.withOpacity(0.2)),
                              borderRadius:
                              BorderRadius.circular(8.0),
                            ),
                            width: MediaQuery.of(context).size.width / 4.5,
                            height: MediaQuery.of(context).size.height / 16.5,
                            padding: EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/images/facebook.png', // Set the path to the Facebook icon image
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    Center(
                      child: Align(
                        alignment: Alignment.center,
                        // Align text to the center
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Align the row's children to the center
                          children: [
                            Text(
                              'Vous n\'avez pas de compte? ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                letterSpacing: 0.3,
                                color: Color(0xFF6B7280),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            // Adjust the spacing between the texts
                            RichText(
                              text: TextSpan(
                                text: 'S\'inscrire',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  letterSpacing: 0.3,
                                  color: Color(0xFF4B91FF),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle the tap gesture
                                  },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}

