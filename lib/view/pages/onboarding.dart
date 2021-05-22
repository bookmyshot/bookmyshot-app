import 'package:book_my_shot/util/painter.dart';
import 'package:book_my_shot/util/strings.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/add_mobile.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/otp_verify.dart';
import 'package:book_my_shot/view/pages/fragments/onboarding/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    return Container(
        height: MediaQuery.of(context).size.height,
        color: Painter.gray100,
        padding: EdgeInsets.all(24.0),
        child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: <Widget>[
              Welcome(),
              AddMobile(),
              // OTPVerify(),
            ]));
  }
}
