import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/Uncolored_buttons.dart';
import '../components/constants.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(26.w),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UncoloredButtons(label: 'Skip',direction: TextAlign.right,ontap: (){}),
                SizedBox(
                  height: 100.h,
                ),
                Column(
                  children: [
                    Text(
                      'Welcome Amr',
                      style:kMessage,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      child: Image.asset(
                          'assets/images/myflash.jpg'),
                    ),
                    Text(
                      'You\'re all set',
                      style: kMessage,
                    ),
                    Text(
                      'Take a minute to upload a profile phote', style: kLoadingmessage,
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
