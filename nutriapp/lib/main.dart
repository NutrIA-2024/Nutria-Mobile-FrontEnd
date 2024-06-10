import 'package:flutter/material.dart';
import 'package:nutriapp/modules/nutritionist/account/changeAccountsNutricionist.dart';
import 'package:nutriapp/modules/nutritionist/code_patient/codePatient.dart';
import 'package:nutriapp/modules/nutritionist/home/homeNutricionist.dart';
import 'package:nutriapp/modules/nutritionist/profile/profileNutricionist.dart';
import 'package:nutriapp/modules/nutritionist/profile/profileNutricionistEdit.dart';
import 'package:nutriapp/modules/user/sidebar/sidebarLayout.dart';

void main() {
  runApp(const NutriaApp());
}

class NutriaApp extends StatelessWidget {
  const NutriaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nutria",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const /*SideBarlayout()*/ HomeNutricionistPage(),
    );
  }
}
