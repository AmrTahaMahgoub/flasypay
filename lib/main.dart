import 'package:flasypay/features/flash_pay/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/flash_pay/screens/login_screen.dart';

void main() {
  runApp(const FlashPay());
}

class FlashPay extends StatelessWidget {
  const FlashPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
      },
    );
  }
}
