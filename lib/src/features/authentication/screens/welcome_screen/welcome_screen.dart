import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_string.dart';
import '../login_screen/login_screen.dart';
import '../signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimatorController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    var isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? mSecondaryColor : mPrimaryColor,
      body: Stack(children: [
        MFadeInAnimation(
          durationInMs: 600,
          animate: MAnimatedPosition(
            bottomAfter: 0,
            bottomBefore: -100,
            topAfter: 0,
            topBefore: 0,
            leftBefore: 0,
            leftAfter: 0,
            rightAfter: 0,
            rightBefore: 0,
          ),
          child: SafeArea(
            child: Stack(
              children: [
                // Background Image
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: isDarkMode
                            ? AssetImage(mWelcomeScreenImage)
                            : AssetImage(mWelcomeScreenImage2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                Positioned.fill(
                  child: Container(
                    // Gradient
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0, 0.7, 1],
                      ),
                    ),

                    // Welcome Title and text
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              mWelcomeTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.apply(color: Colors.white),
                            ),
                            Text(
                              mWelcomeSubTitle,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.apply(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mDefaultSize + 10,
                        ),
                        // Login And Signup Buttons
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed:() => Get.to(() => const LoginScreen()),
                                child: Text(mLogin.toUpperCase()),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed:() => Get.to(() => const SignupScreen()),
                                child: Text(mSignUp.toUpperCase()),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: mDefaultSize,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
