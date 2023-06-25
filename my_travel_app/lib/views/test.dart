import 'package:flutter/material.dart';
import 'dart:ui';

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double width = constraints.maxWidth;
          final double height = constraints.maxHeight;

          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: RadialGradient(
                        center: Alignment(0.1532, 0.2104),
                        radius: width * 0.9016,
                        colors: [
                          Color.fromRGBO(8, 86, 208, 0.2),
                          Color.fromRGBO(20, 45, 84, 0.028),
                          Color.fromRGBO(8, 86, 208, 0.2),
                        ],
                        stops: [0, 0.7708, 1],
                        transform: GradientRotation(3.14159 / 2),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(width * 0.059),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                        child: Container(),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -(width - 50) / 2,
                top: width,
                child: Opacity(
                  opacity: 1,
                  child: Container(
                    width: width - 50,
                    height: height - 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.1),
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.5,
                        colors: [
                          Color.fromRGBO(183, 227, 254, 1),
                          Color.fromRGBO(183, 227, 254, 0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -100,
                top: 200,
                child: Opacity(
                  opacity: 0.58,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.1),
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.5,
                        colors: [
                          Color.fromRGBO(8, 86, 208, 1),
                          Color.fromRGBO(8, 86, 208, 0),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -(width) / 2,
                bottom: -(width) / 2,
                child: Opacity(
                  opacity: 0.58,
                  child: Container(
                    width: 397,
                    height: 397,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.1),
                      gradient: RadialGradient(
                        center: Alignment.center,
                        radius: 0.5,
                        colors: [

                          Color.fromRGBO(20, 45, 84, 1),
                          Color.fromRGBO(20, 45, 84, 0),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
