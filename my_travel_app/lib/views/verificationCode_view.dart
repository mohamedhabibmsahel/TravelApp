import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class VerificationCodeView extends StatefulWidget {
  @override
  _VerificationCodeViewState createState() => _VerificationCodeViewState();
}

class _VerificationCodeViewState extends State<VerificationCodeView> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double width = constraints.maxWidth;
          final double height = constraints.maxHeight;

          return Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/topBackground.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment(0.5, 0),
                      colors: [
                        Color.fromRGBO(8, 86, 208, 0.2),
                        Color.fromRGBO(20, 45, 84, 0.03),
                        Color.fromRGBO(8, 86, 208, 0.2),
                      ],
                      stops: [0, 0.7708, 1],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 80,
                      ),
                    ],
                  ),

                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: MediaQuery.of(context).size.height * 0.2,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40.0),
                                topRight: Radius.circular(40.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.2),
                                  blurRadius: 80,
                                ),
                              ],
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40.0),
                                  topRight: Radius.circular(40.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width / 2,
                        top: -width * 0.8,
                        child: Opacity(
                          opacity: 0.58,
                          child: Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.1),
                              gradient: RadialGradient(
                                center: Alignment.center,
                                radius: 0.5,
                                colors: [
                                  Color(0xFF0856D0),
                                  Color.fromRGBO(8, 86, 208, 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: width / 2,
                        top: width / 2,
                        child: Opacity(
                          opacity: 0.58,
                          child: Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.1),
                              gradient: RadialGradient(
                                center: Alignment.center,
                                radius: 0.5,
                                colors: [
                                  Color(0xFFB7E3FE),
                                  Color.fromRGBO(20, 45, 84, 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: width / 2,
                        top: width / 2,
                        child: Opacity(
                          opacity: 0.58,
                          child: Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(width * 0.1),
                              gradient: RadialGradient(
                                center: Alignment.center,
                                radius: 0.5,
                                colors: [
                                  Color(0xFFB7E3FE),
                                  Color.fromRGBO(183, 227, 254, 0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
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
                                          decoration: const InputDecoration(hintText: "0"),
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
                                          decoration: const InputDecoration(hintText: "0"),
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
                                          decoration: const InputDecoration(hintText: "0"),
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
                                          decoration: const InputDecoration(hintText: "0"),
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
                                          decoration: const InputDecoration(hintText: "0"),
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
                                  width: width/ 1.15,
                                  height: height/14.5,
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
                    ],
                  ),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
