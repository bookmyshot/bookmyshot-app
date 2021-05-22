import 'package:book_my_shot/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    
    return Container(
        width: _width,
        
        child: Column(
          children: [
            Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Book your Slot",
                          style: Theme.of(context).textTheme.headline2,
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
                        child: Text("We're ",
                            style: Theme.of(context).textTheme.bodyText1,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify),
                      ),
                    ],
                  ),
                  Row(children: [
                    SizedBox(height: 56),
                  ]),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: _width * 0.15,
                        child: Column(children: [
                          SvgPicture.asset(
                            checkmark,
                            height: 64.0,
                          ),
                        ]),
                      ),
                      Container(
                        width: _width * 0.70,
                        child: Column(children: [
                          Row(children: [
                            Text(
                              "Choose Location",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ]),
                          Row(children: [
                            Text(
                              "Enter",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ]),
                        ]),
                      )
                    ],
                  ),
                  Row(children: [
                    SizedBox(height: 56),
                  ]),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: _width * 0.15,
                        child: Column(children: [
                          SvgPicture.asset(
                            checkmark,
                            height: 64.0,
                          ),
                        ]),
                      ),
                      Container(
                        width: _width * 0.70,
                        child: Column(children: [
                          Row(children: [
                            Text("get notified",
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.justify),
                          ]),
                          Row(children: [
                            Text("Enable notifications",
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.justify),
                          ]),
                        ]),
                      )
                    ],
                  ),
                  Row(children: [
                    SizedBox(height: 56),
                  ]),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: _width * 0.15,
                        child: Column(children: [
                          SvgPicture.asset(
                            checkmark,
                            height: 64.0,
                          ),
                        ]),
                      ),
                      Container(
                        width: _width * 0.70,
                        child: Column(children: [
                          Row(children: [
                            Text("Confirm Slots",
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.justify),
                          ]),
                          Row(children: [
                            Text("Seamlessly book your slots",
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.justify),
                          ]),
                        ]),
                      )
                    ],
                  ),
                ]),
            Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    onPressed: () => {}, child: Text('Get Started')))
          ],
        ));
  }
}
