import 'package:flutter/material.dart';

import '../../../../constants/size.dart';
import '../../models/on_boarding_model.dart';


class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(mDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            image: AssetImage(model.image), height: size.height * 0.4,
          ),
          Column(children: [
            Text(
              model.title,
              style: Theme.of(context).textTheme.headline1?.apply(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Text(
              model.subtitle,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 80,),
        ],
      ),
    );
  }
}