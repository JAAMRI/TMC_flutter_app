import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth screen',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline5:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headline6:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        buttonColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bg_image.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "The Muslim Companion\n",
                          style: Theme.of(context).textTheme.headline5),
                      TextSpan(
                          text: "For Muslims and Non-Muslims",
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
