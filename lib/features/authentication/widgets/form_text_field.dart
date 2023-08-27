import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const FormTextField({
    super.key,
    this.hintText = '',
    this.validator,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      validator: validator,
      onSaved: onSaved,
    );
  }
}
