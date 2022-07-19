import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'dfun.g.dart';

@HiveType(typeId: 1)
class Stud {
  @HiveField(1)
  String name;
  @HiveField(2)
  String age;
  Stud({required this.name, required this.age});
}

ValueNotifier<List<Stud>> studlist = ValueNotifier([]);
Future<void> setval(Stud val) async {
  final studdb = await Hive.openBox<Stud>("Studdb");
  await studdb.add(val);
  print("hi:${studdb.values}");
  // studlist.value.add(val);
  // studlist.notifyListeners();
  getAll();
  // val.i = d;
}

Future<void> getAll() async {
  final studdb = await Hive.openBox<Stud>("Studdb");
  studlist.value.clear();
  studlist.value.addAll(studdb.values);
  print("ing:${studlist.value.length}");
  studlist.notifyListeners();
}
