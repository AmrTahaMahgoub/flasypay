import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFeildModel extends StatelessWidget {
  const TextFormFeildModel(
      {required this.validation,
        required this.onsaved,
        required this.label,
        required this.KeyBoardType,
        required this.controller});
  final String label;
  final String? Function(String?)? validation;
  final void Function(String?)? onsaved;
  final TextInputType KeyBoardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: label, labelStyle: const TextStyle(color: Colors.blueAccent)),
      validator: validation,
      onSaved: onsaved,
      keyboardType: KeyBoardType,
    );
  }
}
