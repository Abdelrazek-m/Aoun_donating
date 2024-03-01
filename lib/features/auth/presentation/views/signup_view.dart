import 'package:aoun_donating/core/constants/colors.dart';
import 'package:aoun_donating/core/constants/text_styles.dart';
import 'package:aoun_donating/core/routes/routers_names.dart';
import 'package:aoun_donating/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/utils/widgets/custom_botton.dart';
import '../widgets/custom_login_with_google.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
  GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(60),
                Text(
                  'حساب جديد',
                  style: TextStyles.textStyle32,
                ),
                const Gap(35),
                const CustomTextFormField(
                  hintText: 'الاسم',
                ),
                const Gap(20),
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
                const Gap(20),
                const CustomTextFormField(
                  hintText: 'رقم الهاتف',
                   type: 'phone',
                ),
                const Gap(70),
                CustomBotton(
                  title: 'إنشاء حساب',
                  onTap: ()  {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      Navigator.pushReplacementNamed(
                          context, RouterNames.rLoginView);
                      // use the email provided here
                    }
                  },
                ),
                const Gap(26),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, RouterNames.rLoginView);
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: ' لديك حساب ؟  ',
                            style: TextStyles.textStyle16_70),
                        TextSpan(
                            text: 'تسجيل الدخول',
                            style: TextStyles.textStyle16
                                .copyWith(color: MyColors.cPrimaryColor)),
                      ],
                    ),
                  ),
                ),
                const Gap(10),
                Text('أو', style: TextStyles.textStyle20_80),
                const Gap(10),
                const CustomLoginWithGoogle(title: 'انشاء بحساب جوجل')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
