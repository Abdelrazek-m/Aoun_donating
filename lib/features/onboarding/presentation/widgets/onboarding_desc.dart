import 'package:flutter/material.dart';

class OnboardingDesc extends StatelessWidget {
  const OnboardingDesc({
    super.key, required this.desc,
  });
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 480,
          ),
          Text(desc),
        ],
      ),
    );
  }
}
