import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscuretext;
  final TextEditingController? controller;
  const CustomFormField({
    super.key,
    required this.title,
    this.obscuretext = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscuretext,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
            contentPadding: const EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
