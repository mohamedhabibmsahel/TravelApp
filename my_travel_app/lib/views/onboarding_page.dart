import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String? text;
  final Color color;

  const OnboardingPage({
    Key? key,
    required this.image,
    this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.darken),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              text ?? "",
              style: GoogleFonts.poppins(
                fontSize: 64,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
