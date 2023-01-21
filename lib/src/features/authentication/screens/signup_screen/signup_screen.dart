import 'package:flutter/material.dart';
import 'package:gymmi/src/features/authentication/screens/signup_screen/widgets/signup_widget.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(mDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormHeaderWidget(
                    image: mLoginTopImage,
                    title: mSignUpTitle,
                    subtitle: mSignUpSubTitle),
                SignupFormWidget(),
                Column(
                  children: [
                    Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(mGoogleLogoImage),
                          width: 20.0,
                        ),
                        label:  Text(mSignInWith.toUpperCase()),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text.rich(
                            TextSpan(text: mAlreadyHaveAccount, style: TextStyle(color: mSecondaryColor), children: [
                              TextSpan(
                                text: mLogin,style: TextStyle(color: Colors.blue),
                              ),
                            ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
