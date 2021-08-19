import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              // margin: EdgeInsets.fromLTRB(5, 5, 20, 30),
              // padding: EdgeInsets.all(20),
              child: Image(
                width: 50.0,
                image: AssetImage('assets/images/theMuslimCompanionIcon.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Hey,',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Login Now.',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  text: 'Hello ',
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'If you are new / ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
