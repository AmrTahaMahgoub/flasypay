import 'package:easy_localization/easy_localization.dart';
import 'package:flasypay/features/flash_pay/screens/user_data_screen.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/Uncolored_buttons.dart';
import '../components/constants.dart';
import '../components/text_form_feild.dart';
import '../translation/locale_keys.g.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final formkey = GlobalKey<FormState>();
  final FirstName = TextEditingController();
  final LastName = TextEditingController();
  final Phonenumber = TextEditingController();
  @override
  void dispose() {
    FirstName.dispose();
    LastName.dispose();
    Phonenumber.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.only(left: 18.w, right: 18.w, bottom: 18.h, top: 15.h),
          child: SingleChildScrollView(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  UncoloredButtons(
                      label: 'Back', direction: TextAlign.left, ontap: () {}),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Image.asset('assets/images/myflash.jpg'),
                        const Text('FlashPay', style: kLogoname),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormFeildModel(
                            controller: FirstName,
                            label: LocaleKeys.first_name.tr(),
                            onsaved: (value) {
                              FirstName.text = value!;
                              print(value);
                            },
                            validation: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter First name';
                              } else {
                                return null;
                              }
                            },
                            KeyBoardType: TextInputType.name),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormFeildModel(
                            controller: LastName,
                            label: LocaleKeys.second_name.tr(),
                            onsaved: (value) {
                              LastName.text = value!;
                            },
                            validation: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter Last name';
                              } else {
                                return null;
                              }
                            },
                            KeyBoardType: TextInputType.name),
                        SizedBox(
                          height: 5.h,
                        ),
                        TextFormFeildModel(
                            controller: Phonenumber,
                            label: LocaleKeys.Phone_number.tr(),
                            onsaved: (value) {
                              Phonenumber.text = value!;
                            },
                            validation: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter mobile number';
                              } else {
                                return null;
                              }
                            },
                            KeyBoardType: TextInputType.number),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 52.0.h,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => UserData()));
                      }
                    },
                    color: Colors.redAccent,
                    child: const Text(
                      'Sign Up',
                      style: kSignupbutton,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 42.w),
                    child: Row(
                      children: [
                        Text(
                          'Already have an account ?',
                          textAlign: TextAlign.start,
                          style: kMessage,
                        ),
                        Text(
                          'Sign in ',
                          style: kUncoloredButtons,
                        ),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () async {
                            await context.setLocale(Locale('en'));
                          },
                          child: Text('English')),
                      TextButton(
                          onPressed: () async {
                            await context.setLocale(Locale('ar'));
                          },
                          child: Text('العربيه'))
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
