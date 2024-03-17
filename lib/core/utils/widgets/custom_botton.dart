import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.title,
    this.onTap,
    this.color,
    this.radius,
    this.fontSize,
  });
  final double? radius;
  final double? fontSize;
  final String title;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: ShapeDecoration(
            color: color ?? MyColors.cPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 30),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyles.textStyle32
                  .copyWith(color: MyColors.cSecondaryColor)
                  .copyWith(fontSize: fontSize??32),
            ),
          ),
        ),
      ),
    );
  }
}
