import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../core/constants/my_icons.dart';
import '../../../../core/constants/text_styles.dart';

class CustomLoginWithGoogle extends StatelessWidget {
  const CustomLoginWithGoogle({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        height: 60,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(MyIcons.google, colorBlendMode: BlendMode.overlay, ),
            const Gap(20),
            Text(title, style: TextStyles.textStyle16_70)
          ],
        ),
      ),
    );
  }
}
