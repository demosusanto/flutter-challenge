import 'package:flutter/material.dart';
import 'package:flutter_app/buttontwitter.dart';

import 'buttonemail.dart';
import 'inputfield.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30, right: 30, left: 30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 20,
          ),
          ButtonEmail(),
          SizedBox(
            height: 40,
          ),
          ButtonTwitter(),
          SizedBox(height: 81)
        ],
      ),
    );
  }
}
