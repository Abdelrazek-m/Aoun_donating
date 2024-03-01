import 'package:aoun_donating/core/constants/colors.dart';
import 'package:aoun_donating/core/constants/text_styles.dart';
import 'package:aoun_donating/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/routes/routers_names.dart';
import '../../../../core/utils/widgets/custom_botton.dart';
import '../widgets/custom_login_with_google.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(60),
                Text(
                  'تسجيل الدخول',
                  style: TextStyles.textStyle32,
                ),
                const Gap(85),
                const CustomTextFormField(
                  hintText: 'البريد الإلكتروني',
                  suffixIcon: Icons.mail_outline,
                  type: 'email',
                ),
                const Gap(20),
                const CustomTextFormField(
                  hintText: 'كلمة السر',
                  isPassword: true,
                  type: 'password',
                ),
                const Gap(10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'نسيت كلمة السر ؟',
                    style: TextStyles.textStyle16_80,
                  ),
                ),
                const Gap(70),
                CustomBotton(
                  title: 'تسجيل الدخول',
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                          context, RouterNames.rSignUpView);
                    }
                  },
                ),
                const Gap(60),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RouterNames.rSignUpView);
                    // use the email provided here
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'ليس لديك حساب ؟  ',
                            style: TextStyles.textStyle16_70),
                        TextSpan(
                            text: 'إنشاء حساب جديد',
                            style: TextStyles.textStyle16
                                .copyWith(color: MyColors.cPrimaryColor)),
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Text('أو', style: TextStyles.textStyle20_80),
                const Gap(10),
                const CustomLoginWithGoogle(title: 'تسجيل بحساب جوجل')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
