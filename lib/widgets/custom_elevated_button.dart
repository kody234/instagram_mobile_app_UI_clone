import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.hintText,
    required this.onTap,
  }) : super(key: key);
  final String hintText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        hintText,
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(primary: kPrimaryUtils),
    );
  }
}
