import 'package:flutter/material.dart';
import '../../resource/constants.dart';
import '../../util/app_text_styles.dart';
import '../../util/palette.dart';
import 'app_button.dart';

class NetworkErrorScreen extends StatelessWidget {
  final VoidCallback? onClick;

  const NetworkErrorScreen({Key? key, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            width: 100,
            height: 100,
            image: AssetImage('images/wireless.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              Constants.noInternet,
              style: AppTextStyle.textStyle22Bold(),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              Constants.confirmConnectivity,
              style: AppTextStyle.textStyle18Normal(
                  textColor: Palette.textFieldSecondary),
              textAlign: TextAlign.center,
            ),
          ),
          AppButton(
            btnText: Constants.tryAgain,
            onClick: () {
              onClick?.call();
            },
          ),
        ],
      ),
    );
  }
}
