import 'package:flutter/material.dart';
import 'package:gymmi/src/features/authentication/screens/login_screen/widgets/login_footer_widget.dart';
import 'package:gymmi/src/features/authentication/screens/login_screen/widgets/login_header_widget.dart';
import '../../../../constants/size.dart';
import 'widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(mDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoginHeaderWidget(),
                LoginForm(),
                LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }


}
