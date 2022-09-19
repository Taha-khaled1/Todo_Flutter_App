import 'package:flutter/material.dart';

import '../Controller/provider.dart';

class CountTask extends StatelessWidget {
  const CountTask({
    Key? key,
    required this.providerdata,
  }) : super(key: key);

  final taskData providerdata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(43, 15, 0, 30),
      child: Text('${providerdata.count} Task',
          style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
