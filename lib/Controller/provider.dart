import 'package:flutter/cupertino.dart';

import 'models.dart';

class taskData extends ChangeNotifier {
  TextEditingController controllertext = TextEditingController();
  bool TorF = false;
  int count = 0;

  List<Tasks>? pop = [];

  e(String text, bool torf) {
    pop?.add(Tasks(bools: torf, texttask: text));
    notifyListeners();
  }

  increscount() {
    count = pop!.length;
    notifyListeners();
  }

  delete(index) {
    pop!.remove(pop![index]);

    notifyListeners();
  }
}
