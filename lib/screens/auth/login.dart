import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/decorated_title.dart';
import 'package:recipe_app/widgets/icon_button.dart';
import 'package:recipe_app/widgets/primary_button.dart';
import 'package:recipe_app/widgets/spacer.dart';
import 'package:recipe_app/widgets/text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).viewPadding.top, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello,',
                style: titleLargeBold,
              ),
              Text(
                'Welcome back',
                style: titleSmallRegular,
              ),
              addVerticalSpace(90),
              CustomTextField(
                textController: emailTextController,
                text: 'Email',
                hintText: 'Enter Email',
              ),
              addVerticalSpace(40),
              CustomTextField(
                textController: passwordTextController,
                text: 'Password',
                hintText: 'Enter password',
                isObscure: true,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, bottom: 30),
                child: Text(
                  'Forgot Password ?',
                  style: labelLargeRegular.copyWith(
                      color: Constants.secondaryColor),
                ),
              ),
              PrimaryButton(
                title: 'Sign In',
                onTap: () {},
                width: MediaQuery.of(context).size.width,
              ),
              addVerticalSpace(20),
              const DecoratedTitle(text: 'Or Sign in With'),
              addVerticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomIconButton(
                    image: 'assets/images/g-logo3.png',
                  ),
                  addHorizontalSpace(20),
                  const CustomIconButton(image: 'assets/images/f-logo.png'),
                ],
              ),
              addVerticalSpace(20),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: 'Don\'t have an account?',
                    style: labelLargeRegular,
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        style: labelLargeRegular.copyWith(
                            color: Constants.secondaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
