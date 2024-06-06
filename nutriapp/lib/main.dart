import 'package:flutter/material.dart';
import 'package:nutriapp/modules/camera/activate_camera.dart';
import 'package:nutriapp/modules/food_favorite/favorite.dart';
import 'package:nutriapp/modules/graphipcs/graphics.dart';
import 'package:nutriapp/modules/home/home.dart';
import 'package:nutriapp/modules/login_and_register/init.dart';
import 'package:nutriapp/modules/login_and_register/codeSecurityPage.dart';
import 'package:nutriapp/modules/login_and_register/loginPage.dart';
import 'package:nutriapp/modules/login_and_register/recoverPage.dart';
import 'package:nutriapp/modules/login_and_register/registerPage.dart';
import 'package:nutriapp/modules/information_init/infoPage.dart';
import 'package:nutriapp/modules/politics/politics.dart';
import 'package:nutriapp/modules/profile/profileSinEdicion.dart';
import 'package:nutriapp/modules/profile/profileConEdicion.dart';
import 'package:nutriapp/modules/sidebar/sidebarLayout.dart';

import 'package:nutriapp/modules/information_init/info2Page.dart';

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
      home: const /*SideBarlayout()*/ FavoritePage(),
    );
  }
}
