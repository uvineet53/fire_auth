import 'package:fire_auth/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Enter SOS Contact")),
            ElevatedButton(onPressed: (){}, child: Text("Customise Alarm")),
            ElevatedButton(
              onPressed: (()async {
                await Auth().logout();
              }),
              child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}