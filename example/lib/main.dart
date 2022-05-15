import 'package:fire_auth/auth.dart';
import 'package:fire_auth/fire_auth.dart';
import 'package:flutter/material.dart';
import 'authPage.dart';
import 'home.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Auth.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FireAuth(
        home: Home(),
        authPage: AuthPage(),
      ),
    );
  }
}