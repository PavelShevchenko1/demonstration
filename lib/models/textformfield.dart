import 'package:flutter/cupertino.dart';

class TextFormFieldModel {
  TextEditingController controller = TextEditingController();
  String key;
  String label;
  String hint;
  TextFormFieldModel(
      {required this.hint, required this.label, required this.key});
}
