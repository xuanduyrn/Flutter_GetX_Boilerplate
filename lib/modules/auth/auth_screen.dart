import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/modules/auth/auth_controller.dart';
import 'package:getx_boilerplate/routes/routes.dart';
import 'package:getx_boilerplate/shared/shared.dart';

class AuthScreen extends GetView<AuthController> {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: _buildItems(context),
        ),
      ),
    );
  }

  Widget _buildItems(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      children: [
        Icon(
          Icons.home,
          size: SizeConfig().screenWidth * 0.26,
          color: Colors.blueGrey,
        ),
        const SizedBox(height: 20.0),
        Text(
          'Welcome',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: CommonConstants.largeText,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).textTheme.headline6!.color,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          'Let\'s start now!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: CommonConstants.normalText,
            color: Theme.of(context).textTheme.subtitle1!.color,
          ),
        ),
        const SizedBox(height: 50.0),
        GradientButton(
          text: 'Sign In',
          onPressed: () {
            Get.toNamed(Routes.AUTH + Routes.LOGIN, arguments: controller);
          },
        ),
        const SizedBox(height: 20.0),
        BorderButton(
          text: 'Sign Up',
          onPressed: () {
            Get.toNamed(Routes.AUTH + Routes.REGISTER, arguments: controller);
          },
        ),
        const SizedBox(height: 62.0),
        Text(
          'This is a demo only used for test.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: CommonConstants.smallText,
            color: ColorConstants.tipColor,
          ),
        ),
      ],
    );
  }
}
