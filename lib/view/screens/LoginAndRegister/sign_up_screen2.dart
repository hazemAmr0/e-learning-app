import 'package:e_learning/core/utils/appColor.dart';
import 'package:e_learning/core/utils/methods/validations.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/custom_text_form_field.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/header_sign_up_2.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/select_picture_section.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/signUp_button.dart';
import 'package:e_learning/view/screens/LoginAndRegister/widgets/sign_up_with.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen2 extends StatelessWidget {
  SignUpScreen2({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  /// Builds the sign up screen.
  ///
  /// This screen is where users can sign up for a new account.
  ///
  /// It contains a form with fields for the user's first name, email address,
  /// and password. It also contains a button to sign up and a link to sign in
  /// if the user already has an account.
  ///
  /// The form is validated using the [MyValidators] class.
  ///
  /// If the form is valid, the user is signed up and the [SignUpButton] is
  /// displayed.
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// The header of the sign up screen.
              ///
              /// It contains a title and a subtitle.
              const header_sign_up2(),

              Text(
                'Join Brainly Community',
                style: GoogleFonts.dmSans(
                    color: AppColor.darkCharcoal,
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Subscribe quickly with us',
                style: GoogleFonts.dmSans(
                    color: AppColor.Gray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),

              /// The profile picture section of the sign up screen.
              ///
              /// It allows the user to select a profile picture from their device.
              const ProfilePictureWithEdit(),
              const SizedBox(height: 30),

              /// The form of the sign up screen.
              ///
              /// It contains fields for the user's first name, email address, and
              /// password. It also contains a button to sign up.
              Form(
                key: formKey,
                child: Column(
                  children: [
                    /// The first name field of the form.
                    ///
                    /// It is a text field that requires the user to enter their
                    /// first name.
                    customTextFormField(
                      controller: nameController,
                      validator: MyValidators.displayNamevalidator,
                      label: 'First Name',
                    ),

                    /// The email address field of the form.
                    ///
                    /// It is a text field that requires the user to enter a valid
                    /// email address.
                  
                    customTextFormField(
                      controller: _emailController,
                      validator: MyValidators.emailValidator,
                      label: 'email',
                    ),

                    /// The password field of the form.
                    ///
                    /// It is a text field that requires the user to enter a valid
                    /// password.
                 
                    customTextFormField(
                      controller: _passwordController,
                      validator: MyValidators.passwordValidator,
                      label: 'password',
                    ),
                   

                    /// The sign up button of the form.
                    ///
                    /// It is a button that submits the form and signs the user up.
                    SignUpButton(label: 'Sign Up', formKey: formKey),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              /// The text between the form and the "or" section.
              ///
              /// It is a text that tells the user that we never share anything on
              /// their behalf.
              Text(
                'OR',
                style: GoogleFonts.dmSans(
                    color: AppColor.Gray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'We never share anything on your behalf',
                style: GoogleFonts.dmSans(
                    color: AppColor.Gray,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),

              /// The "or" section of the sign up screen.
              ///
              /// It contains three buttons to sign up with Apple, Google, and
              /// Facebook.
              Sign_up_with(
                backgroundColor: AppColor.Gray,
                label: 'Continue with Apple',
                prefixIcon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                ),
              ),
              Sign_up_with(
                backgroundColor: Colors.red,
                label: 'Continue with Google',
                prefixIcon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                ),
              ),
              Sign_up_with(
                backgroundColor: AppColor.brightBlue,
                label: 'Continue with Facebook',
                prefixIcon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






