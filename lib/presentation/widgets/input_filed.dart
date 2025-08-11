import 'package:flutter/material.dart';
import 'package:sneakers/core/styles/theme.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key, 
    required this.label, 
    this.placeHolder,
    this.onChanged,
    this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
  });

  final String label;
  final String? placeHolder;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _controller;
  bool _obscur = true;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _obscur = widget.obscureText;
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void onPressObscurBtn() {
    setState(() {
      _obscur = !_obscur;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: h3Medium,
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: _controller,
          obscureText: widget.obscureText ? _obscur : false,
          keyboardType: widget.keyboardType,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: widget.placeHolder,
            hintStyle: agBody3,
            filled: true,
            fillColor: backgroundSecondary,
            suffixIcon: widget.obscureText ? IconButton(
              onPressed: onPressObscurBtn, 
              icon: Icon(
                Icons.visibility_off,
                color: _obscur ? contentPrimary : contentSecondary
              )
            ) : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color:  backgroundSecondary
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color:  backgroundSecondary
              )
            ),
            contentPadding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
          ),
        ),
      ],
    );
  }
}