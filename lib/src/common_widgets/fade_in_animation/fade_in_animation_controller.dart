import 'package:get/get.dart';

class FadeInAnimatorController extends GetxController {
  static FadeInAnimatorController get find => Get.find();
  RxBool animate = false.obs;

  Future startSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds:3000));
    animate.value = false;
    // await Future.delayed(Duration(milliseconds: 2000));
    // Get.to(()=>OnBoardingScreen());
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    // Get.offAll(() => const WelcomeScreen());
  }
}

// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)
// =>
// WelcomeScreen())
// );
