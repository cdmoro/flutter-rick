import 'package:flutter/material.dart';

class CharacterStatus extends StatelessWidget {
  final String status;

  final Map<String, MaterialColor> statusColor = {
    "dead": Colors.red,
    "alive": Colors.green,
    "unknown": Colors.grey
};

  CharacterStatus(this.status);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: statusColor[status.toLowerCase()],
            shape: BoxShape.circle
          ),
          margin: EdgeInsets.only(right: 5),
        ),
        Text(status)
      ],
    );
  }
}