import 'package:flutter/material.dart';

import '../../../../../constants/size.dart';
import '../../../../../constants/text_string.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: mFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    labelText: mEmail,
                    hintText: mEmail,
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: mFormHeight,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: mPassword,
                    hintText: mPassword,
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: mFormHeight - 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // ForgotPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text(mForgotPassword),
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text(mLogin.toUpperCase()))),
            ],
          ),
        ));
  }


}


