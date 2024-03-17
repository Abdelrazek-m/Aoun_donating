// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aoun_donating/core/constants/colors.dart';
import 'package:aoun_donating/core/utils/widgets/custom_botton.dart';
import 'package:aoun_donating/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:gap/gap.dart';

import '/core/constants/my_icons.dart';
import '/core/constants/text_styles.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  ForgetPasswordViewState createState() => ForgetPasswordViewState();
}

class ForgetPasswordViewState extends State<ForgetPasswordView> {
  // final _formKey = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _otpCodeController = TextEditingController();
  // String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إعادة تعين كلمة المرور', style: TextStyles.textStyle20_50),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          
          children: [
            Gap(60),
            Image.asset(MyIcons.forgetPassword),
            Gap(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, ), 
              child: Text(
                'يرجى إدخال البريد الإلكترونى الخاص بك لإعاده تعيين كلمة المرور',
                style: TextStyles.textStyle14,
                textAlign: TextAlign.center,
                
                maxLines: 2, 
              ),
            ),
            Gap(30),
            CustomTextFormField(hintText: 'البريد الإلكترونى'), 
            Gap(30),
            CustomBotton(title: 'اعاده تعين كلمة المرور', color: MyColors.cGouldColor,fontSize: 18, radius: 12,),

          ],
        ),
      ),
    );
  }
}
  // Future<void> _sendOTP() async {
  //   if (!_formKey.currentState!.validate()) {
  //     return;
  //   }
  //   final emailOrPhone = _emailController.text;
  //   // Implement your logic to send OTP to email or phone number

  //   setState(() {
  //     _errorMessage = null;
  //   });
  // }

//   Future<void> _verifyOTP() async {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }
//     final otpCode = _otpCodeController.text;
//     // Implement your logic to verify OTP

//     setState(() {
//       _errorMessage = null;
//     });
//   }

