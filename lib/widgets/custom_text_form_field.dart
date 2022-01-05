import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? initialValue;
  final TextInputType? keyboardType;
  final Widget? label;
  final IconData? icon;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValue;

  const CustomTextFormField({
    Key? key,
    this.initialValue,
    this.keyboardType,
    this.label,
    this.icon,
    this.obscureText = false,
    required this.formProperty,
    required this.formValue
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValue[formProperty] = value,
      decoration: InputDecoration(
        label: label,
        icon: (icon != null) ? Icon(icon) : null
      ),
      validator: (value) {
        if (value == null) return 'El campo es requerido';

        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
  
}
