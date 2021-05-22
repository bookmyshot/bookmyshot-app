import 'package:flutter/material.dart';
import 'package:telephony/telephony.dart';

class OTPVerify extends StatefulWidget {
  @override
  _OTPVerifyState createState() => _OTPVerifyState();
}

backgrounMessageHandler(SmsMessage message) async {
  //Handle background message
}

class _OTPVerifyState extends State<OTPVerify> {
  final Telephony telephony = Telephony.instance;
  String _message = "";

  @override
  void initState() {
    super.initState();
    postOtp();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Container(
        child: Column(children: [
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(width: _width * 0.6),
        ),
      ])
    ]));
  }

  Future<void> initPlatformState() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    final bool? result = await telephony.requestPhoneAndSmsPermissions;

    if (result != null && result) {
      telephony.listenIncomingSms(
          onNewMessage: onMessage, listenInBackground: false);
    }

    if (!mounted) return;
  }

  postOtp() {

  }

  onMessage(SmsMessage message) async {
    setState(() {
      _message = message.body ?? "Error reading message body.";
    });
  }
  
}
