import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomField extends StatefulWidget {
  final String title;
  final String placeholder;
  final bool obsecureText;
  final TextInputType textInputType;

  const CustomField({
    super.key,
    required this.title,
    required this.placeholder,
    this.obsecureText = false,
    this.textInputType = TextInputType.text,
  });

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  bool isPasswordVisible = false; // Untuk mengontrol visibility password

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Text(
            widget.title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
          ),
          const SizedBox(height: 6),
          // Input Field
          TextFormField(
            keyboardType: widget.textInputType,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: widget.obsecureText && !isPasswordVisible,
            validator: (value) {
              if (widget.textInputType == TextInputType.emailAddress) {
                if (value == null || value.isEmpty) {
                  return 'Email cannot be empty';
                }
                final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                if (!emailRegex.hasMatch(value)) {
                  return 'Enter a valid email address';
                }
              }
              return null; // Validasi lainnya
            },
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              hintStyle: greyTextStyle,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor, width: 2),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400, width: 0.5),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              // Tambahkan ikon untuk field password saja
              suffixIcon: widget.obsecureText
                  ? IconButton(
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
