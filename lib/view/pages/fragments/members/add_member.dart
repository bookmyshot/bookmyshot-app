import 'package:book_my_shot/util/painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_null_safety/flutter_neumorphic.dart';

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  TextEditingController _photoIDNumberController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  String _groupValue = "M";
  var dropdownValue = "pan card";
  bool _isPressed = false;

  void initState() {
    super.initState();
    _photoIDNumberController = TextEditingController();
    _nameController = TextEditingController();
  }

  void dispose() {
    _photoIDNumberController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children: [
          Container(
            color: Color(0xff1D2027),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24.0, right: 24.0, bottom: 72.0, top: 72.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            NeumorphicIcon(
                              Icons.face,
                              size: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24.0),
                              child: NeumorphicText(
                                'Add a Member',
                                style: NeumorphicStyle(
                                  depth: 0, //customize depth here
                                  color: Colors.white, //customize color here
                                ),
                                textStyle: NeumorphicTextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  //customize size here
                                  // AND others usual text style properties (fontFamily, fontWeight, ...)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NeumorphicText(
                                  'photo id proof',
                                  style: NeumorphicStyle(
                                    depth: 0, //customize depth here
                                    color: Painter
                                        .blueGray100, //customize color here
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontSize: 16, //customize size here
                                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: DropdownButton(
                                      dropdownColor: Painter.gray600,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      value: dropdownValue,
                                      isDense: true,
                                      onChanged: (newValue) {
                                        setState(() {
                                          dropdownValue = newValue.toString();
                                          print(dropdownValue);
                                        });
                                      },
                                      items: [
                                        'pan card',
                                        'aadhar card',
                                        'driving licence',
                                        'passport',
                                        'pension passbook',
                                        'voter ID'
                                      ].map((String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Container(
                                            width: 300.0,
                                            child: Text(value),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NeumorphicText(
                                  'photo id number',
                                  style: NeumorphicStyle(
                                    depth: 0, //customize depth here
                                    color: Painter
                                        .blueGray100, //customize color here
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontSize: 16, //customize size here
                                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Expanded(
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        color: Color(0xff1D2027),
                                        depth: 0,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            height: 1.0,
                                            color: Colors.white,
                                          ),
                                          controller: _photoIDNumberController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 11,
                                                top: 11,
                                                right: 15),
                                            hintText: 'enter photo id number',
                                            hintStyle: TextStyle(
                                                fontSize: 16.0,
                                                color: Painter.gray600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NeumorphicText(
                                  'name',
                                  style: NeumorphicStyle(
                                    depth: 0, //customize depth here
                                    color: Painter
                                        .blueGray100, //customize color here
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontSize: 16, //customize size here
                                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Expanded(
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        color: Color(0xff1D2027),
                                        depth: 0,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            height: 1.0,
                                            color: Colors.white,
                                          ),
                                          controller: _nameController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 11,
                                                top: 11,
                                                right: 15),
                                            hintText: 'enter your name',
                                            hintStyle: TextStyle(
                                                fontSize: 16.0,
                                                color: Painter.gray600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NeumorphicText(
                                  'gender',
                                  style: NeumorphicStyle(
                                    depth: 0, //customize depth here
                                    color: Painter
                                        .blueGray100, //customize color here
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontSize: 16, //customize size here
                                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 24.0),
                                        child: Column(
                                          children: [
                                            NeumorphicRadio(
                                              style: NeumorphicRadioStyle(
                                                border: NeumorphicBorder(
                                                    color: Painter.gray200,
                                                    width: 10),
                                                boxShape:
                                                    NeumorphicBoxShape.circle(),
                                                shape: NeumorphicShape.convex,
                                                disableDepth: false,
                                                intensity: 0,
                                                unselectedDepth: 2,
                                                unselectedColor:
                                                    Painter.gray200,
                                                selectedColor: Painter.blue400,
                                                selectedDepth: 5,
                                              ),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Center(
                                                  child: Text(""),
                                                ),
                                              ),
                                              value: "M",
                                              groupValue: _groupValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _groupValue =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              child: Center(
                                                child: Text("Male"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 24.0),
                                        child: Column(
                                          children: [
                                            NeumorphicRadio(
                                              style: NeumorphicRadioStyle(
                                                border: NeumorphicBorder(
                                                    color: Painter.gray200,
                                                    width: 10),
                                                boxShape:
                                                    NeumorphicBoxShape.circle(),
                                                shape: NeumorphicShape.convex,
                                                disableDepth: false,
                                                intensity: 0,
                                                unselectedDepth: 2,
                                                unselectedColor:
                                                    Painter.gray200,
                                                selectedColor: Painter.blue400,
                                                selectedDepth: 5,
                                              ),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Center(
                                                  child: Text(""),
                                                ),
                                              ),
                                              value: "F",
                                              groupValue: _groupValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _groupValue =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              child: Center(
                                                child: Text("Female"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 24.0),
                                        child: Column(
                                          children: [
                                            NeumorphicRadio(
                                              style: NeumorphicRadioStyle(
                                                border: NeumorphicBorder(
                                                    color: Painter.gray200,
                                                    width: 10),
                                                boxShape:
                                                    NeumorphicBoxShape.circle(),
                                                shape: NeumorphicShape.convex,
                                                disableDepth: false,
                                                intensity: 0,
                                                unselectedDepth: 2,
                                                unselectedColor:
                                                    Painter.gray200,
                                                selectedColor: Painter.blue400,
                                                selectedDepth: 5,
                                              ),
                                              child: SizedBox(
                                                height: 40,
                                                width: 40,
                                                child: Center(
                                                  child: Text(""),
                                                ),
                                              ),
                                              value: "O",
                                              groupValue: _groupValue,
                                              onChanged: (value) {
                                                setState(() {
                                                  _groupValue =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            SizedBox(
                                              child: Center(
                                                child: Text("Other"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                NeumorphicText(
                                  'age',
                                  style: NeumorphicStyle(
                                    depth: 0, //customize depth here
                                    color: Painter
                                        .blueGray100, //customize color here
                                  ),
                                  textStyle: NeumorphicTextStyle(
                                    fontSize: 16, //customize size here
                                    // AND others usual text style properties (fontFamily, fontWeight, ...)
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Expanded(
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        color: Color(0xff1D2027),
                                        depth: 0,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: TextField(
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            height: 1.0,
                                            color: Colors.white,
                                          ),
                                          controller: _ageController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            contentPadding: EdgeInsets.only(
                                                left: 0,
                                                bottom: 11,
                                                top: 11,
                                                right: 15),
                                            hintText: 'enter your age',
                                            hintStyle: TextStyle(
                                                fontSize: 16.0,
                                                color: Painter.gray600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 200.0),
                    child: Container(
                      width: 250,
                      child: NeumorphicButton(
                          onPressed: () {
                            _isPressed = true;
                          },
                          style: NeumorphicStyle(
                            color: Color(0xff1D2027),
                            shape: NeumorphicShape.concave,
                            shadowDarkColor: Painter.blue100,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(24)),
                            depth: 10,
                            intensity: 0.4,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 8.0, top: 6.0, bottom: 6.0),
                            child: Center(
                              child: Text("Add"),
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
