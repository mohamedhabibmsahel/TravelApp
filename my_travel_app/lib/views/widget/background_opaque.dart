import 'dart:ui';
import 'package:flutter/material.dart';

class MainTemplateWidget extends StatelessWidget {
  final String imageUrl;
  final List<Color>? gradiantColors;
  final Widget child;
  final bool includeBackButton;

  const MainTemplateWidget({super.key, required this.imageUrl, this.gradiantColors, required this.child, this.includeBackButton = true});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(

        builder: (BuildContext context, BoxConstraints constraint) {
          final double width = constraint.maxWidth;
          final double height = constraint.maxHeight;
          return Stack(
            children: [

              //PHOTO COUVERTURE
              Positioned(
                top: 0,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: constraint.maxWidth,
                  height: 350,
                ),
              ),
              if (includeBackButton)
                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(10)),
                          border: Border.all(color: Colors.black)),
                      child: const Center(child: Text('<',
                          style: TextStyle(fontSize: 28, color: Colors.black))),
                    ),
                  ),
                ),

              Positioned(
                left: width / 2,
                top: 40,
                child: Opacity(
                  opacity:1,
                  child: Container(
                    width: width,
                    height: width,
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
                right: -width / 2,
                bottom: -width / 2,
                child: Opacity(
                  opacity: 0.58,
                  child: Container(
                    width: width,
                    height: width,
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
                left: -width / 2,
                bottom: -width / 2,
                child: Opacity(
                  opacity: 0.56,
                  child: Container(
                    width: width,
                    height: width,
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
              Positioned(
                top: 150,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    gradient: LinearGradient(
                      colors: gradiantColors ?? [Colors.grey.withOpacity(
                          0.6), Colors.white.withOpacity(0.9)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 12.0, sigmaY: 12.0, tileMode: TileMode.clamp),
                      child: Container(
                        height: constraint.maxHeight,
                        width: constraint.maxWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: child,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
    );
  }
}