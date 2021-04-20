import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/images/logo-unpam.png'),
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "181011401002 - Demo Susanto",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
