import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../stateless_widgets/custom_button.dart';
import '../../stateless_widgets/custom_text_field.dart';
import '../../theme/theme_colors.dart';
import '../../theme/theme_text_styles.dart';
import '../../utils/helper_size_widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  static String routeName = 'signInScreen';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background-image.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Pushes content to top and bottom
          children: [
            Column(
              children: [
                addVerticalSpace(100),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Sign In",
                    softWrap: true,
                    style: kLargeLabelText,
                    textAlign: TextAlign.center,
                  ),
                ),

                addVerticalSpace(40),

                CustomTextFields.emailTextField(
                  hintText: 'Email Address',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),

                CustomTextFields.standardTextField(
                  hintText: 'Password',
                  onChanged: (value) {
                    // do something with the email entered
                  },
                ),

                addVerticalSpace(20),

                CustomButton.defaultButton(
                  text: 'SIGN IN',
                  onPressed: () {
                    // Handle button click
                  },
                  backgroundColor: kAccent,
                  textColor: Colors.white,
                  borderColor: Colors.white,
                  cornerRadius: 20,
                  width: 200,
                  height: 45,
                ),

                addVerticalSpace(40),

                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'Have an account already? ',
                        style: TextStyle(
                          color: kAccent,
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: 'SIGN UP',
                        style: const TextStyle(
                          color: kAccent, // Use the desired color
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle the "SIGN UP" button click here
                          },
                      ),
                    ],
                  ),
                )






              ],
            ),

          ],
        ),
      ),
    );
  }
}

