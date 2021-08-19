import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(
              width: 50.0,
              image: AssetImage('assets/images/theMuslimCompanionIcon.png'),
            )
          ],
        ),
      ),
    );
  }
}
