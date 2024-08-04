import 'package:flutter/material.dart';

import 'local_db.dart';

final demoWeaponList = weapons;


class WeaponListView extends StatelessWidget {
  const WeaponListView({ super.key});

  final _itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(demoWeaponList[index].manufacture),
          subtitle: Text(demoWeaponList[index].model),
          trailing: const Icon(Icons.arrow_forward),
          leading: const Icon(Icons.person),
          onTap: () {
            // code to execute when the ListTile is tapped
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.orange,
      ),
    );
  }
}
