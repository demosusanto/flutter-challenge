import 'package:flutter/material.dart';

import 'header.dart';
import 'InputWrapper.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.purple[500],
              Colors.cyan[300],
              Colors.cyan[400]
            ]),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 75,
              ),
              Header(),
              Container(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                child: InputWrapper(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
