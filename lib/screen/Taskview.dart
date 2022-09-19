import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Controller/provider.dart';
import '../widget/checkbox.dart';

class Taskview extends StatelessWidget {
  const Taskview({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context, value, child) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            value.delete(index);
            value.increscount();
          },
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 2,
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 14, right: 14, top: 0, bottom: 14),
            padding: EdgeInsets.only(left: 7, right: 7, top: 7, bottom: 7),
            width: double.infinity,
            child: checkbox(index: index),
          ),
        );
      },
    );
  }
}
