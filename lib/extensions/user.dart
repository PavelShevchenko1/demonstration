import 'package:demonstration/models/textformfield.dart';
import 'package:demonstration/models/user.dart';

extension UserExtension on UserModel {
  String get fullInfo {
    return "$id $name $email";
  }

  List<TextFormFieldModel> get textFields {
    return [
      TextFormFieldModel(hint: "Email", label: "Email", key: "email")
        ..controller.text = email ?? '',
      TextFormFieldModel(hint: "Name", label: "Name", key: "name")
        ..controller.text = name ?? '',
    ];
  }
}
