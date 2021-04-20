import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class InputField extends StatefulWidget {
  @override
  InputFieldState createState() => InputFieldState();
}

Future<LoginResponse> createLoginState(String email, String password) async {
  final String apiUrl = "https://papansukaduka.com/api/api/auth/login";
  final response = await http.post(
    Uri.https(apiUrl, ''),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{'email': email, 'password': password}),
  );

  if (response.statusCode == 200) {
    print(response.body);
    return LoginResponse.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed');
  }
}

class LoginResponse {
  String email;
  String password;

  LoginResponse({this.email, this.password});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }
}

bool _isObsecure = true;
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(11),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan[300], width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan[300]),
              ),
              hintText: 'Enter your email',
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
              labelText: 'Email',
              labelStyle: TextStyle(color: Colors.cyan[300]),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(11),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.white))),
          child: TextField(
            controller: _passwordController,
            obscureText: _isObsecure,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan[300], width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.cyan[300]),
                ),
                hintText: 'Enter your password',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.cyan[300]),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                    icon: Icon(
                      _isObsecure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObsecure = !_isObsecure;
                      });
                    })),
          ),
        ),
      ],
    );
  }
}
