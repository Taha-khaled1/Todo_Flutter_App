import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Controller/provider.dart';
import '../widget/addtask.dart';
import 'CountTask.dart';
import 'Taskview.dart';
import 'TextwithIcon.dart';

class homepage extends StatefulWidget {
  homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    var x = TextStyle(fontSize: 50, color: Colors.white);
    var providerdata = Provider.of<taskData>(context);
    return Scaffold(
      backgroundColor: Color(0xff0A9396),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextwithIcon(x: x),
              CountTask(providerdata: providerdata),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: ListView.builder(
                      itemCount: providerdata.pop!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Taskview(
                          index: index,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    left: 1,
                    child: addtask(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
