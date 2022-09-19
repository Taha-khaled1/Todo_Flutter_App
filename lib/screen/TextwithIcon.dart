import 'package:flutter/material.dart';

class TextwithIcon extends StatelessWidget {
  const TextwithIcon({
    Key? key,
    required this.x,
  }) : super(key: key);

  final TextStyle x;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(35, 80, 0, 10),
      child: Row(
        children: [
          Icon(
            Icons.playlist_add_check,
            size: 70,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            'TodoDayApp',
            style: x,
          )
        ],
      ),
    );
  }
}
