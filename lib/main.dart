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
        buttonTheme:
            Theme.of(context).buttonTheme.copyWith(buttonColor: kPrimaryColor),
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
                    image: AssetImage("assets/images/tmc_icon_black_bg.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Elevate your Lifestyle!\n",
                          style: Theme.of(context).textTheme.headline5),
                      TextSpan(
                          text: "Muslims and Non-Muslims",
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Start Now",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.arrow_forward,
                        )
                      ],
                    ),
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
