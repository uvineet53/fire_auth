import 'package:fire_auth/auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);
  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isRegister = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18),
          shrinkWrap: true,
          children: [
            isRegister ? registerWidget() : loginWidget(),
            ElevatedButton(
                onPressed: () => setState(() {
                      isRegister = !isRegister;
                    }),
                child: Text("${isRegister ? 'Login' : 'Register'}"))
          ],
        ),
      ),
    );
  }
}

loginWidget() {
  String email = '';
  String password = '';
  return Material(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            label: Text("email"),
          ),
          onChanged: (value) {
            email = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("password"),
          ),
          obscureText: true,
          onChanged: (value) {
            password = value;
          },
        ),
        ElevatedButton(
            onPressed: () async {
              if (email.length>2) {
                await Auth().login(email.trim(), password.trim());
              }
            },
            child: Text("Login")),
      ],
    ),
  );
}

registerWidget() {
  String email = '';
  String password = '';
  String name = '';
  String age = '';
  String city = '';
  return Material(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            label: Text("name"),
          ),
          onChanged: (value) {
            name = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("age"),
          ),
          onChanged: (value) {
            age = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("city"),
          ),
          onChanged: (value) {
            city = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("email"),
          ),
          onChanged: (value) {
            email = value;
          },
        ),
        TextField(
          decoration: InputDecoration(
            label: Text("password"),
          ),
          obscureText: true,
          onChanged: (value) {
            password = value;
          },
        ),
        ElevatedButton(
            onPressed: () async {
              if (email.length>2) {
                await Auth().register(email.trim(), password.trim());
              }
            },
            child: Text("Register"))
      ],
    ),
  );
}
