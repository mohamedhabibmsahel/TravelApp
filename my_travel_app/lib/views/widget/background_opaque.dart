import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
      builder: (_, constraint) => Stack(
        children: [
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
                  decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.black)),
                  child: const Center(child: Text('<', style: TextStyle(fontSize: 28, color: Colors.black))),
                ),
              ),
            ),
          Positioned(
            top: 200,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0, tileMode: TileMode.decal),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      colors: gradiantColors ?? [Colors.grey.withOpacity(0.6), Colors.white.withOpacity(0.9)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
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
        ],
      ),
    );
  }
}