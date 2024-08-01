import 'package:flutter/material.dart';
import 'weaponModel.dart';

var weapon1 = Weapon(
    'Blaser',
    'R8',
    '300WM',
    11111111);

var weapon2 = Weapon(
    'Glock',
    'G19',
    '9mm',
    22222222);

var weapon3 = Weapon(
    'AK-47',
    'Kalashnikov',
    '7.62mm',
    33333333);

var weapon4 = Weapon(
    'M16',
    'Colt',
    '5.56mm',
    44444444);

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
