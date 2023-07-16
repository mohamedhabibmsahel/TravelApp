import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_travel_app/controllers/recuperationPassword_controller.dart';
import 'package:my_travel_app/views/widget/background_opaque.dart';


class RecuperationPasswordView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecuperationPasswordController>(
        builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          body: MainTemplateWidget(
            imageUrl: 'assets/images/topBackground.png',
            gradiantColors:  [Color.fromRGBO(8, 86, 208, 1).withOpacity(0.2),Color.fromRGBO(20, 45, 84, 0.14).withOpacity(0.2),Color.fromRGBO(8, 86, 208, 1).withOpacity(0.2)],
            includeBackButton: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/lockIcon.png', // Set the path to the Google icon image
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    margin: EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      'Récupération du mot de passe',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        letterSpacing: -0.2,
                        color: Color(0xFF142D54),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Entrez votre e-mail enregistré ci-dessous pour recevoir les instructions de mot de passe',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        letterSpacing: 0.3,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 24.0),
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

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width/ 1.15,
                      height: MediaQuery.of(context).size.height/14.5,
                      margin: EdgeInsets.only(top: 24.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF0856D0),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                            Get.toNamed("VerificationCodeView");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0856D0),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(16.0),
                          ),
                        ),
                        child: Text(
                          'Envoie moi un email',
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
                ],
              ),
            ),

          ),
        ));
  }
}
