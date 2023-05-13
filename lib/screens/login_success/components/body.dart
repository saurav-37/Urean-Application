import 'package:flutter/material.dart';
import 'package:urean/components/default_button.dart';
import 'package:urean/screens/home/home_screen.dart';
import 'package:urean/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Center(
          child: Image.asset(
            "assets/images/success2.jpg",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Center(child: Text("Login Success", style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),),),
        const Spacer(),
        Center(
          child: SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: () {
                Navigator.pushNamed(context, HomeScreen.routeName);},),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
