import 'package:flutter/material.dart';
import 'package:nutriapp/modules/sidebar/sidebar.dart';
import 'package:nutriapp/modules/profile/profileSinEdicion.dart';

class SideBarlayout extends StatelessWidget {
  const SideBarlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ProfileWithoutPage(),
        SideBar(),
      ],
    ));
  }
}
