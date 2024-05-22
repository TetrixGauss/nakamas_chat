import 'package:flutter/material.dart';

class UserComponent extends StatelessWidget {
  final String userName;
  final String status;
  const UserComponent({Key? key, required this.userName, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(userName),
        Text(status),
      ],
    );
  }
}
