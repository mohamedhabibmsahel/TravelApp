import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_travel_app/controllers/verification_code_controller.dart';
import 'package:my_travel_app/views/widget/background_opaque.dart';


class VerificationCodeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerificationCodeController>(
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
                    margin: EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      'Vérifiez que c\'est bien vous',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        letterSpacing: -0.2,
                        color: Color(0xFF142D54),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: double.infinity,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          'Nous envoyons un code à ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            letterSpacing: 0.3,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '*****@mail.com ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            letterSpacing: 0.3,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Entrez-le ici pour vérifier votre identité',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                            letterSpacing: 0.3,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Container(
                        height: 68,
                        width: 64,
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: SizedBox(

                            child: TextFormField(
                              onSaved: (pin1){},
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],
                            )
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: SizedBox(

                            child: TextFormField(
                              onSaved: (pin2){},
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },

                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],
                            )
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: SizedBox(

                            child: TextFormField(
                              onSaved: (pin3){},
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },

                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],
                            )
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: SizedBox(

                            child: TextFormField(
                              onSaved: (pin4){},
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },

                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],
                            )
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(bottom: 12.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: SizedBox(

                            child: TextFormField(
                              onSaved: (pin5){},
                              onChanged: (value){
                                if(value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },

                              style: TextStyle(
                                color: Colors.black, // Set text color
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly],
                            )
                        ),
                      ),
                    ],
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
                          'Confirmer',
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
