import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sneakers/core/routes/app_router.gr.dart';

import 'package:sneakers/core/styles/theme.dart';
import 'package:sneakers/presentation/widgets/accent_button.dart';
import 'package:sneakers/presentation/widgets/input_filed.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String _email = "";
  String _password = "";

  void onTypeEmail(String value) {
    _email = value;
  }

  void onTypePassword(String value) {
    _password = value;
  }

  void onSubmit() async {
    // login request
    // is auth -> home page
    // else -> show error

    print(_email);
    print(_password);
    
    context.router.push(const AppRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 45,
              children: <Widget>[
                Column(
                  spacing: 10,
                  children: <Widget>[
                    /** Title */
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Hello 👋,",
                              style: h1,
                            ),
                            Text(
                              "wanna buy sneaker ?",
                                style: h1,
                            )
                          ],
                        )
                      ],
                    ),
                  /** Fields */
                  Column(
                    spacing: 15,
                    children: <Widget>[
                      /** Email */
                      InputField(
                        label: "Email",
                        placeHolder: "Enter your email...",
                        keyboardType: TextInputType.emailAddress,
                        onChanged: onTypeEmail,
                      ),
                      /** Email */
                      InputField(
                        label: "Password",
                        placeHolder: "Enter your password",
                        obscureText: true,
                        onChanged: onTypePassword,
                      ),
                    ],
                  ),
                ],
              ),
              /** Sumbit button */
              AccentButton(
                label: "Log in",
                onPressed: onSubmit,
              )
            ],
          ),
        )
      ),
    );
  }

}