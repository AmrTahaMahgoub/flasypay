

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class UncoloredButtons extends StatelessWidget {
  UncoloredButtons({required this.label,required this.direction, required this.ontap });
  final String label;
  final  TextAlign  direction;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Text(
        label,
        textAlign: direction,
        style: kUncoloredButtons,
      ),
    );
  }
}
