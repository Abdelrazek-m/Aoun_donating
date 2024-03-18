import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '/core/constants/colors.dart';
import '/core/utils/widgets/custom_botton.dart';
import '/features/auth/presentation/widgets/custom_text_form_field.dart';
import '../../../../core/routes/routers_names.dart';
import '/core/constants/my_icons.dart';
import '/core/constants/text_styles.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  ForgetPasswordViewState createState() => ForgetPasswordViewState();
}

class ForgetPasswordViewState extends State<ForgetPasswordView> {
  String? email;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: Text('إعادة تعين كلمة المرور', style: TextStyles.textStyle20_50),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
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
                  'يرجى إدخال البريد الإلكترونى الخاص بك لإعاده تعيين كلمة المرور',
                  style: TextStyles.textStyle14,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
              const Gap(30),
              CustomTextFormField(
                hintText: 'البريد الإلكترونى',
                type: 'email',
                onChange: (value) {
                  email = value;
                },
              ),
              const Gap(30),
              CustomBotton(
                title: 'اعاده تعين كلمة المرور',
                color: MyColors.cGouldColor,
                fontSize: 18,
                radius: 12,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(
                      context,
                      RouterNames.rVerifyOTPView,
                      arguments: email,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
