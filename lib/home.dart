import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
          primaryColor: Colors.cyan[300],
          primaryTextTheme:
              TextTheme(headline6: TextStyle(color: Colors.white))),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Susanto'),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/logo-unpam.png'),
                    width: 75,
                    height: 75,
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text('Demo Susanto', style: TextStyle(fontSize: 20)),
                          Text(
                            '181011401002',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ))
                ],
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(width: 1, color: Colors.grey[300]),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            // SizedBox(height: 300),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: TextButton(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
