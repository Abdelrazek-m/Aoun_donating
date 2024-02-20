// ignore_for_file: prefer_const_constructors, prefer_const_lit

import 'package:aoun_donating/core/constants/colors.dart';
import 'package:aoun_donating/core/routes/routers_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/onboarding_desc.dart';
import '../widgets/onborading_background_image.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: OnBoardingSlider(
        
        controllerColor: MyColors.cPrimaryColor,
        headerBackgroundColor: MyColors.cSecondaryColor,
        onFinish: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('seen', true);
      
          Navigator.of(context).pushReplacementNamed(RouterNames.rSignUpView);
        },
        trailingFunction: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setBool('seen', true);
      
          Navigator.of(context).pushReplacementNamed(RouterNames.rLoginView);
        },
        finishButtonText: 'انشاء حساب',
        finishButtonTextStyle: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: MyColors.cSecondaryColor),
        finishButtonStyle: FinishButtonStyle(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          backgroundColor: MyColors.cPrimaryColor,
        ),
        skipTextButton: Text(
          'تخطى',
          style: TextStyle(fontSize: 18, color: MyColors.cPrimaryColor),
        ),
        trailing: Text(
          'تسجيل الدخول',
          style: TextStyle(fontSize: 18, color: MyColors.cPrimaryColor),
        ),
        background: const [
          OnboardingBackgroundImage(imageNumber: 1),
          OnboardingBackgroundImage(imageNumber: 2),
          OnboardingBackgroundImage(imageNumber: 3),
          OnboardingBackgroundImage(imageNumber: 4),
          OnboardingBackgroundImage(imageNumber: 5),
          OnboardingBackgroundImage(imageNumber: 6),
        ],
        
        totalPage: 6,
        speed: 1.8,
        pageBodies: const [
          OnboardingDesc(desc: 'Description Text 1'),
          OnboardingDesc(desc: 'Description Text 2'),
          OnboardingDesc(desc: 'Description Text 3'),
          OnboardingDesc(desc: 'Description Text 4'),
          OnboardingDesc(desc: 'Description Text 5'),
          OnboardingDesc(desc: 'Description Text 6'),
        ],
      ),
    );
  }
}
