import 'package:flutter/material.dart';
import 'dart:ui';

class CustomView extends StatefulWidget {
  @override
  _CustomViewState createState() => _CustomViewState();
}
class _CustomViewState extends State<CustomView> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double width = constraints.maxWidth;
          final double height = constraints.maxHeight;

          return Stack(
              children:[
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
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)
                      ),
                       color: Color(0xFFFFFFFF),
                    ),

                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0)
                        ),
                        gradient: RadialGradient(
                          center: Alignment(0, 0),
                          radius: 1,
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
                            left: width / 2,
                            top: -width * 0.8,
                            child: Opacity(
                              opacity: 0.58,
                              child: Container(
                                width: width ,
                                height: height ,
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
                                width: width ,
                                height: height ,
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
                            right:width/2,
                            top: width / 2,
                            child: Opacity(
                              opacity: 0.58,
                              child: Container(
                                width: width ,
                                height: height ,
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
                                    width: 213.0,
                                    height: 31.0,
                                    margin: EdgeInsets.only(bottom: 24.0),
                                    child: Text(
                                      'Bonjour à tous! 👋',
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
                                      'Bienvenue, connectez-vous à votre compte',
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
                                    width: 374.0,
                                    height: 64.0,
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
                                              labelText: 'Email',
                                              border: InputBorder.none,
                                            ),
                                            cursorColor: Colors.white, // Set cursor color
                                            style: TextStyle(
                                              color: Colors.black, // Set text color
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 374.0,
                                    height: 64.0,
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
                                              labelText: 'Mod de Passe',
                                              border: InputBorder.none,
                                            ),
                                            obscureText: !_isPasswordVisible,
                                            cursorColor: Colors.white, // Set cursor color
                                            style: TextStyle(
                                              color: Colors.black, // Set text color
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _isPasswordVisible = !_isPasswordVisible;
                                            });
                                          },
                                          child: Icon(
                                            _isPasswordVisible
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Color(0xFF6B7280),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft, // Align text to the left
                                    child: Container(
                                      width: 168.0,
                                      height: 28.0,
                                      margin: EdgeInsets.only(bottom: 12.0),
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
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 374.96,
                                      height: 64.21,
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
                                            borderRadius: BorderRadius.circular(16.0),
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
                                  SizedBox(height: 16.0),
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
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          width: width / 4.5,
                                          height: height /16.5,
                                          padding: EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/images/google.png', // Set the path to the Google icon image
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width / 9.35),
                                      InkWell(
                                        onTap: () {
                                          // Handle Apple login
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          width: width / 4.5,
                                          height: height /16.5,
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.apple,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width / 9.35),
                                      InkWell(
                                        onTap: () {
                                          // Handle Facebook login
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          width: width / 4.5,
                                          height: height /16.5,
                                          padding: EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/images/facebook.png', // Set the path to the Facebook icon image
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  SizedBox(height: 16.0),
                                  Align(
                                    alignment: Alignment.centerLeft, // Align text to the left
                                    child: Container(
                                      height: 28.0,
                                      margin: EdgeInsets.only(bottom: 12.0),
                                      child: Text(
                                        'Vous n\'avez pas de compte? ',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16.0,
                                          letterSpacing: 0.3,
                                          color: Color(0xFF6B7280),
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
              ]

          );
        },
      ),
    );
  }
}