import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';

class ButtonEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
        color: Colors.cyan[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextButton(
          child: Text(
            "Login via Email",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onPressed: () async {
            // var email = _emailController.text;
            // var pass = _passwordController.text;
            // await createLoginState(email, pass);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
    );
  }
}
