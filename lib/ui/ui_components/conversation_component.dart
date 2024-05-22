import 'package:flutter/material.dart';

class ConvertationComponent extends StatelessWidget {
  final String message;
  final String userName;
  final String date;
  const ConvertationComponent({Key? key, required this.message, required this.userName, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(userName),
        Text(message),
        Text(date),
      ],
    );
  }
}
