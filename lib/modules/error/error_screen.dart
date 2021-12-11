import 'package:flutter/material.dart';
// import 'package:rive/rive.dart';
import 'package:threadofon/config/app_text_style.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key, this.msg = ''}) : super(key: key);
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ERROR $msg',
          style: AppTextStyle.H2(),
        ),
        // child: RiveAnimation.asset(
        //   "assets/illustrators/loading.riv",
        // ),
      ),
    );
  }
}
