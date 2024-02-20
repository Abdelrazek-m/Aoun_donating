import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';

class PassVisiblitiyIcon extends StatefulWidget {
  const PassVisiblitiyIcon({super.key});

  @override
  State<PassVisiblitiyIcon> createState() => _PassVisiblitiyIconState();
}

class _PassVisiblitiyIconState extends State<PassVisiblitiyIcon> {
  IconData pass = Icons.visibility;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        icon: Icon(pass, size: 36, color: MyColors.cGrayColor),
        onPressed: () {
          setState(() {
            if (pass == Icons.visibility) {
              pass = Icons.visibility_off;
            } else {
              pass = Icons.visibility;
            }
          });
        },
      ),
    );
  }
}
