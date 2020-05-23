import 'package:flutter/material.dart';

class MulilineTextField extends StatelessWidget {
  MulilineTextField(this.fieldController, this.label, this.prefixIcon);
  final TextEditingController fieldController;
  final String label;
  final IconData prefixIcon;
  final TextInputAction textInputAction = TextInputAction.newline;
  final TextCapitalization textCapitalization = TextCapitalization.sentences;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      textAlignVertical: TextAlignVertical.top,
      textInputAction: TextInputAction.newline,
      textCapitalization: TextCapitalization.sentences,
      minLines: null,
      maxLines: null,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: label,
      ),
    );
  }
}
