import 'package:aoun_donating/core/routes/routers_names.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/my_icons.dart';
import '../widgets/custom_bordered_botton.dart';

class SelectMethodView extends StatelessWidget {
  const SelectMethodView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBorderedBotton(
            title: 'إنشاء حساب',
            iconUrl: MyIcons.login,
            onTap: () {
              Navigator.pushReplacementNamed(context, RouterNames.rSignUpView);
            },
          ),
          const Gap(35),
          CustomBorderedBotton(
            title: 'تسجيل دخول',
            iconUrl: MyIcons.account,
            onTap: () {
              Navigator.pushReplacementNamed(context, RouterNames.rLoginView);
            },
          ),
          const Gap(35),
          CustomBorderedBotton(
            title: 'دخول كضيف',
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
