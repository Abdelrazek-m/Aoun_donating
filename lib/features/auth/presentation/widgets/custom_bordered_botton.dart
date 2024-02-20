
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';

class CustomBorderedBotton extends StatelessWidget {
  const CustomBorderedBotton({
    super.key,
    required this.title,
    this.iconUrl,
    this.onTap,
  });

  final String title;
  final String? iconUrl;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.symmetric(horizontal: 45),
        height: 65,
        width: double.infinity,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: MyColors.cPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: iconUrl == null
            ? Align(
                alignment: Alignment.centerRight,
                child: Text(title, style: TextStyles.textStyle16_70))
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: TextStyles.textStyle20_50),
                  const Gap(20),
                  Image.asset(iconUrl!, color: MyColors.cMainColor.withOpacity(.6), height: 26,),
                ],
              ),
      ),
    );
  }
}
