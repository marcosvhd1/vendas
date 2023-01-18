import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
    required this.visibleContent,
    required this.onPressed,
  });

  final TextEditingController controller;
  final bool visibleContent;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: visibleContent,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) return 'O campo senha é obrigatório.';
        if (value.length < 6) return 'A senha precisa ter pelo menos 6 caracteres.';
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Icon(Icons.fingerprint_rounded),
        ),
        labelText: 'Senha',
        hintText: 'Senha',
        suffixIcon: Container(
          margin: const EdgeInsets.only(right: 10),
          child: IconButton(
            icon: const Icon(Icons.remove_red_eye_rounded),
            onPressed: () => onPressed(),
          ),
        ),
      ),
    );
  }
}
