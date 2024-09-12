
import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/already_have_account.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/header_sign_up.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/password_input_field.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/signUp_button.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/terms_and_conditions.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/text_email_or_password.dart';
import 'package:flutter/material.dart';
import 'widgets/email_input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();

  final FocusNode _passwordFocusNode = FocusNode();

  @override

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Column(
          children: [
            /// The header of the sign up screen.
            const header_sign_up(),
            const SizedBox(height: 20),
            /// The main content of the sign up screen.
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        /// The email field of the sign up screen.
                        const text_email_or_password(
                          label: 'Your Email' ),
                        EmailField(emailController: _emailController, emailFocusNode: _emailFocusNode,),
                        
                        /// The password field of the sign up screen.
                        const text_email_or_password(
                          label: 'Password',
                         ),
                        PasswordField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
                  
                        ),
                        const SizedBox(height: 20),
                        /// The sign up button of the sign up screen.
                        SignUpButton(formKey: formKey, label: 'Create Account',),
                        const SizedBox(height: 20),
                        /// The terms and conditions checkbox of the sign up screen.
                        TermsAndConditionsCheckbox(agreedToTerms: true,onChanged: (p0) => true,),
                        const SizedBox(height: 20),
                        /// The already have an account button of the sign up screen.
                        const AlreadyHaveAccount(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}







