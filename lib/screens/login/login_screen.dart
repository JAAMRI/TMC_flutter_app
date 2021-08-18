import 'package:flutter/material.dart';
import 'package:tmc_flutter_app/screens/login/components/login_body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LoginBody(),
      ),
    );
  }
}
