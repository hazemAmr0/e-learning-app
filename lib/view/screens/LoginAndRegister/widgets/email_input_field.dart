import 'package:e_learning/core/utils/methods/validations.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
    required TextEditingController emailController,
    required FocusNode emailFocusNode,
   
  })  : _emailController = emailController,
        _emailFocusNode = emailFocusNode;

  final TextEditingController _emailController;
  final FocusNode _emailFocusNode;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SizedBox(
        height:
            80, // Increased height to account for the potential error message
        child: TextFormField(
          controller: _emailController,
          focusNode: _emailFocusNode,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white12,
            border:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            errorStyle:  TextStyle(height: 0), // Hides error text visually
            helperText: ' ', // Reserves space for error message
            suffixIcon: Icon(
              Icons.check,
             
              size: 20,
            ),
          ),
          validator: (value) {
            return MyValidators.emailValidator(value);
          },
          style: const TextStyle(color: Colors.black),
          onFieldSubmitted: (value) {
            // Focus can be managed here if needed
          },
        ),
      ),
    );
  }
}
