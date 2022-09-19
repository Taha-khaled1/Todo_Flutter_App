import 'package:flutter/material.dart';
import 'package:todoapp/widget/showmodel.dart';

class addtask extends StatefulWidget {
  @override
  State<addtask> createState() => _addtaskState();
}

class _addtaskState extends State<addtask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            showmodelbutten(context);
          },
          icon: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
