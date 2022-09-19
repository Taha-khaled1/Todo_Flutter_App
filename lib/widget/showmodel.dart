import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Controller/provider.dart';

Future<dynamic> showmodelbutten(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 30,
                  left: 25,
                  right: 25,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(children: [
                Text(
                  'Add Task',
                  style: TextStyle(fontSize: 45),
                ),
                SizedBox(height: 70),
                SingleChildScrollView(
                  child: TextField(
                    maxLines: 2,
                    controller: Provider.of<taskData>(context).controllertext,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  height: 90,
                  child: Consumer<taskData>(
                    builder: (context, value, child) {
                      return ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ))),
                        onPressed: () {
                          value.e(value.controllertext.text, value.TorF);
                          value.increscount();
                          Navigator.of(context).pop();
                          value.controllertext.text = '';
                        },
                        child: Text(
                          'Add',
                          style: TextStyle(fontSize: 45),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ]),
            ),
          ),
        );
      });
}
