import 'package:auto_route/auto_route.dart';
import 'package:book_my_shot/util/painter.dart';
import 'package:book_my_shot/util/strings.dart';
import 'package:book_my_shot/view/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 2, milliseconds: 500),
    ).then(
      (value) => AutoRouter.of(context).replace(
        OnboardingRoute(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Painter.gray100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(svgLogo),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Quicko',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
