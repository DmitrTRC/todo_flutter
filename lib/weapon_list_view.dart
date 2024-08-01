import 'package:flutter/material.dart';

import 'local_db.dart';


final demoWeaponList = [
  weapon1,
  weapon2,
  weapon3,
  weapon4,
];

class WeaponListView extends StatelessWidget {
  const WeaponListView({super.key});

  final itemCount = 5;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        itemCount: itemCount)
  }
}
