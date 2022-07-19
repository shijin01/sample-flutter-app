import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hiveadddata/screen/Screen1.dart';
import 'package:hiveadddata/screen/screenp2.dart';
import 'package:path_provider/path_provider.dart';
import 'data/dfun.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final documentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(documentDirectory.path);
  Hive.initFlutter(documentDirectory.path);

  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(StudAdapter());
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAll();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [ScreenAdd(), Expanded(child: const ViewScreen())],
            ),
          ),
        ),
      ),
    );
  }
}
