import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final int? maxlineas;

  const CustomInputField(
      {Key? key,
      this.hintText,
      this.labelText,
      this.icon,
      this.keyboardType,
      this.obscureText = false,
      this.maxlineas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        // print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          labelStyle:
              const TextStyle(color: Color(0xFF003B1D), letterSpacing: 1.2),
          hintText: hintText,
          labelText: labelText,
          hintMaxLines: maxlineas,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF003B1D), width: 3.0)),
          icon: icon == null ? null : FaIcon(icon),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))),
    );
  }
}
