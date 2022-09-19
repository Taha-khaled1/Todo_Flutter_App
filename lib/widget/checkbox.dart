import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Controller/provider.dart';

class checkbox extends StatefulWidget {
  int index;

  checkbox({required this.index});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context, TorF, child) {
        return CheckboxListTile(
          title: Text(
            '${TorF.pop![widget.index].texttask}',
            style: TextStyle(
                fontSize: 22,
                decoration: TorF.pop![widget.index].bools
                    ? TextDecoration.lineThrough
                    : null),
          ),
          onChanged: (value) {
            setState(() {
              TorF.pop![widget.index].bools = value!;
            });
          },
          value: TorF.pop![widget.index].bools,
        );
      },
    );
  }
}
