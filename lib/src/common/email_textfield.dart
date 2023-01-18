import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) return 'O campo email é obrigatório.';
        if (!value.contains("@") || !value.contains(".com")) {
          return 'O email informado está inválido.';
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Icon(Icons.email_rounded),
        ),
        labelText: 'Email',
        hintText: 'Email',
      ),
    );
  }
}
