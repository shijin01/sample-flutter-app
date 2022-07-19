import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveadddata/data/dfun.dart';

class ScreenAdd extends StatelessWidget {
  final namecontroller = TextEditingController();
  final agecontroller = TextEditingController();

  ScreenAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: namecontroller,
          decoration: const InputDecoration(
            hintText: "Enter your name",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: agecontroller,
          decoration: const InputDecoration(
            hintText: "Enter your name",
          ),
        ),
        ElevatedButton.icon(
            onPressed: () {
              // studlist.value.add(
              //     stud(name: namecontroller.text, age: agecontroller.text));
              // studlist.notifyListeners();
              final val =
                  Stud(name: namecontroller.text, age: agecontroller.text);
              setval(val);
            },
            icon: const Icon(Icons.add),
            label: const Text("ADD"))
      ],
    );
  }
}
