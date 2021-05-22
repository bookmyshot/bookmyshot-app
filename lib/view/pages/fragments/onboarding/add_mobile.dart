import 'package:book_my_shot/view/pages/fragments/onboarding/otp_verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_number/mobile_number.dart';

class AddMobile extends StatefulWidget {
  @override
  _AddMobileState createState() => _AddMobileState();
}

class _AddMobileState extends State<AddMobile> {
// class AddMobile extends StatelessWidget {
  String _mobileNumber = '';
  List<SimCard> _simCard = <SimCard>[];

  @override
  void initState() {
    _setOTPListener();
    initMobileNumberState();
    // phoneNumber = getPhoneNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Let's get Started",
                style: Theme.of(context).textTheme.headline3,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.justify),
          ],
        ),
        Row(children: [
          SizedBox(height: 10),
        ]),
        Row(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text("Enter your mobile number to register/login",
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify),
            ),
          ],
        ),
        Row(children: [
          fillCards(),
        ]),
        Align(
            alignment: Alignment.bottomCenter,
            child:
                ElevatedButton(onPressed: () => {
                  OTPVerify()
                }, child: Text('Request OTP')))
      ])
    ]));
  }

  _setOTPListener() {
    MobileNumber.listenPhonePermission((isPermissionGranted) async => {
          if (isPermissionGranted)
            {_simCard = (await MobileNumber.getSimCards)!}
          else
            {}
        });
  }

  Future<void> initMobileNumberState() async {
    if (!await MobileNumber.hasPhonePermission) {
      await MobileNumber.requestPhonePermission;
      return;
    }
    String mobileNumber = '';
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      mobileNumber = (await MobileNumber.mobileNumber)!;
      _simCard = (await MobileNumber.getSimCards)!;
    } on PlatformException catch (e) {
      debugPrint("Failed to get mobile number because of '${e.message}'");
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      mobileNumber = _mobileNumber;
    });
  }

  Widget fillCards() {
    List<Widget> widgets = _simCard
        .map((SimCard sim) => Text(
              'Sim Card Number: (${sim.number})\n\n',
              style: Theme.of(context).textTheme.bodyText2,
            ))
        .toList();
    return Column(children: widgets);
  }

  // getPhoneNumber() async {
  //   final isPermissionGranted = await MobileNumber.hasPhonePermission;
  //   if (isPermissionGranted) {
  //     return getSimCards();
  //   } else {
  //     await MobileNumber.requestPhonePermission;
  //   }
  // }

  // getSimCards() async {}
}
