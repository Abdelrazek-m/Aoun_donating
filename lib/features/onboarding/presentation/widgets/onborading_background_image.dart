
import 'package:flutter/material.dart';

class OnboardingBackgroundImage extends StatelessWidget {
   const OnboardingBackgroundImage({
    super.key, required this.imageNumber,
  });
  final int imageNumber;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/onboarding_images/$imageNumber.jpg',
      width: MediaQuery.of(context).size.width,
      height: 400,
      fit: BoxFit.fill,
    );
  }
}
