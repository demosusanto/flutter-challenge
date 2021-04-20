import 'package:flutter/material.dart';

class ButtonTwitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.purple[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextButton(
          child: Text(
            "Login via Twitter",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            // set up the AlertDialog
            AlertDialog alert = AlertDialog(
              title: Text("Alert"),
              content:
                  Text("Mohon maaf, login via twitter sedang maintenance."),
              actions: [
                new TextButton(
                  child: const Text("OK"),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );

            // show the dialog
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return alert;
              },
            );
          },
        ),
      ),
    );
  }
}
