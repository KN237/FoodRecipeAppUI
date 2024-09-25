import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/decorated_title.dart';
import 'package:recipe_app/widgets/icon_button.dart';
import 'package:recipe_app/widgets/primary_button.dart';
import 'package:recipe_app/widgets/spacer.dart';
import 'package:recipe_app/widgets/text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final nameTextController = TextEditingController();
  final passwordConfirmTextController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).viewPadding.top, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an account',
                style: titleLargeBold,
              ),
              Text(
                'Let\'s help you set up your account,\n it won\'t take long.',
                style: titleSmallRegular,
              ),
              addVerticalSpace(60),
              CustomTextField(
                textController: nameTextController,
                text: 'Name',
                hintText: 'Enter Name',
              ),
              addVerticalSpace(20),
              CustomTextField(
                textController: emailTextController,
                text: 'Email',
                hintText: 'Enter Email',
              ),
              addVerticalSpace(20),
              CustomTextField(
                textController: passwordTextController,
                text: 'Password',
                hintText: 'Enter password',
                isObscure: true,
              ),
              addVerticalSpace(20),
              CustomTextField(
                textController: passwordConfirmTextController,
                text: 'Confirm Password',
                hintText: 'Retype password',
                isObscure: true,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      focusColor: Constants.secondaryColor,
                      activeColor: Constants.secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      side: BorderSide(color: Constants.secondaryColor),
                    ),
                    Text(
                      'Accept terms & Condition',
                      style: labelLargeRegular.copyWith(
                          color: Constants.secondaryColor),
                    ),
                  ],
                ),
              ),
              PrimaryButton(
                title: 'Sign Up',
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
                    text: 'Already a member? ',
                    style: labelLargeRegular,
                    children: [
                      TextSpan(
                        text: 'Sign In',
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
