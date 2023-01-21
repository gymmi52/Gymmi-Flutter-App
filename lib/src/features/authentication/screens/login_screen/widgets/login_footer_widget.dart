import 'package:flutter/material.dart';

import '../../../../../constants/images_string.dart';
import '../../../../../constants/size.dart';
import '../../../../../constants/text_string.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Image(
                    image: AssetImage(mAppleLogoImage),
                    width: 35,
                  ),
                  onPressed: () {},
              ),
              IconButton(
                icon: Image(
                  image: AssetImage(mFBLogoImage),
                  width: 35,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image(
                  image: AssetImage(mGoogleLogoImage),
                  width: 35,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: mFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: mDontHaveAccount,
              style: Theme.of(context).textTheme.subtitle2,
              children: [
                TextSpan(
                    text: mSignUp,
                    style: TextStyle(color: Colors.blue)
                ),
              ]
          )),
        )
      ],
    );
  }
}
