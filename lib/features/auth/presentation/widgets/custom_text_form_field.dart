import '/features/auth/presentation/widgets/validation.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import 'custom_outline_border.dart';
import 'password_visiblitiy_icon.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.onSaved,
    this.suffixIcon,
    this.isPassword = false,
    this.type = 'text', this.onChange,
  });

  final String hintText;
  final IconData? suffixIcon;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;
  final bool isPassword;
  final String type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChange,
      validator: (value) {
        AppValidation validator = AppValidation(type: type);
        return validator.validation(value);
      },
      cursorColor: MyColors.cPrimaryColor,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        labelText: hintText,
        labelStyle: TextStyles.textStyle20_50,
        suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: isPassword
                ? const PassVisiblitiyIcon()
                : suffixIcon == null
                    ? null
                    : Icon(suffixIcon, size: 36, color: MyColors.cGrayColor)),
        hintStyle: TextStyles.textStyle20_50,
        border: customOutlineBorder(MyColors.cGrayColor),
        focusedBorder: customOutlineBorder(MyColors.cPrimaryColor),
      ),
    );
  }
}
