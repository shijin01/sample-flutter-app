import 'package:flutter/material.dart';
import 'package:hiveadddata/data/dfun.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studlist,
        builder: ((BuildContext ctx, List<Stud> stlist, child) {
          return ListView.separated(
              itemBuilder: (ctx, ii) {
                var d = stlist[ii];
                // print(d);
                return ListTile(
                  title: Text(d.name),
                  subtitle: Text(d.age),
                );
              },
              separatorBuilder: (ctx, i) => Divider(),
              itemCount: stlist.length);
        }));
  }
}
