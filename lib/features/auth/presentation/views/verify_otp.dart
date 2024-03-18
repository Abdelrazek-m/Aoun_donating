import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '/core/utils/widgets/custom_botton.dart';
import '/core/constants/colors.dart';
import '/core/constants/my_icons.dart';
import '/core/constants/text_styles.dart';


class VerifyOTPView extends StatelessWidget {
   const VerifyOTPView({super.key, });

  @override
  Widget build(BuildContext context) {
  String email= ModalRoute.of(context)!.settings.arguments  as String;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('إعادة تعين كلمة المرور', style: TextStyles.textStyle20_50),
      ),
      
      body:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const Gap(60),
          Image.asset(MyIcons.forgetPassword),
          const Gap(12),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: Text(
              'لقد أرسلنا رمز التحقق إلى بريدك الإلكترونى $email',
              style: TextStyles.textStyle14,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
          const Gap(30),
          OtpTextField(
            numberOfFields: 4, 
            showFieldAsBox: true,
            fieldWidth: 62,
            filled: true, 
            cursorColor: MyColors.cPrimaryColor,
            focusedBorderColor: MyColors.cPrimaryColor,
            fillColor: MyColors.cGrayColor2,
          ),
          const Gap(30),
          CustomBotton(
            title: 'تحقق',
            color: MyColors.cGouldColor,
            fontSize: 18,
            radius: 12,
            onTap: (){
              // verify otp code here
            },
          ),
        ],
      ),
    ),
    );
  }
}
