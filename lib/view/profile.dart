import 'package:demonstration/controllers/user.dart';
import 'package:demonstration/extensions/user.dart';
import 'package:demonstration/global/keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(builder: (userController) {
      var user = userController.user.value;
      return Scaffold(
        body: Column(
          children: [
            Form(
                key: userFormKey,
                child: Column(
                  children: [
                    for (var field in user?.textFields ?? [])
                      Container() //Виджеты на
                  ],
                ))
          ],
        ),
      );
    });
  }
}
