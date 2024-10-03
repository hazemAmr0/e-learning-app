import 'package:e_learning/core/utils/methods/validations.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  PasswordField({super.key, this.controller, this.focusNode});
  final TextEditingController? controller;
  final FocusNode? focusNode;
  bool _obscureText = false;
  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  void _togglePasswordVisibility() {
    setState(() {
      widget._obscureText = !widget._obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 80,
        child: TextFormField(
          
          controller: widget.controller, // Ensure you define _passwordController
          focusNode: widget.focusNode, // Ensure you define _passwordFocusNode
          textInputAction: TextInputAction.done,
          obscureText: widget._obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white12,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(
                color: Colors
                    .black, // Same as the regular border to avoid changes when focused
              ),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                widget._obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
                size: 20,
              ),
              onPressed: _togglePasswordVisibility,
            ),
            errorStyle: TextStyle(height: 0), // Hides error text visually
            helperText: ' ',
          ),
          validator: (value) {
          return  MyValidators.passwordValidator(value);
          },
          style: const TextStyle(color: Colors.black),
          
        ),
      ),
    );
  }
}
