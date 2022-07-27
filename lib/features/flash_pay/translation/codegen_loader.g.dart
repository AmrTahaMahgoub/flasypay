// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "first_name": "الاسم الاول",
  "second_name": "الاسم الثانى",
  "Phone_number": "رقم الموبايل"
};
static const Map<String,dynamic> en = {
  "first_name": "first name",
  "second_name": "second name",
  "Phone_number": "phone number"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
