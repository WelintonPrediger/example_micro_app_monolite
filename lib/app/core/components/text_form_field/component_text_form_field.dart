import 'package:flutter/material.dart';

class ComponentTextFormField extends StatefulWidget {

  final TextEditingController? controller;
  final IconData icon;
  final double borderRadius;
  final String? hint;

  const ComponentTextFormField({Key? key, this.controller, required this.icon, this.borderRadius = 8.0, this.hint}) : super(key: key);

  @override
  State<ComponentTextFormField> createState() => _ComponentTextFormFieldState();
}

class _ComponentTextFormFieldState extends State<ComponentTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(widget.borderRadius)),
        prefixIcon: Icon(widget.icon),
        hintText: widget.hint,
      ),
    );
  }
}
