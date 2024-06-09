import 'package:flutter/material.dart';
import 'package:nutriapp/modules/user/accounts/changeAccounts.dart';
import 'package:nutriapp/modules/user/camera/activateCamera.dart';
import 'package:nutriapp/modules/user/chat_ia/chatIA.dart';
import 'package:nutriapp/modules/user/chats/chatsSaved.dart';
import 'package:nutriapp/modules/user/chats/chatsSavedHistorial.dart';
import 'package:nutriapp/modules/user/code_friend/codefriend.dart';
import 'package:nutriapp/modules/user/food_favorite/favorite.dart';
import 'package:nutriapp/modules/user/graphipcs/graphics.dart';
import 'package:nutriapp/modules/user/home/home.dart';
import 'package:nutriapp/modules/login_and_register/init.dart';
import 'package:nutriapp/modules/login_and_register/codeSecurityPage.dart';
import 'package:nutriapp/modules/login_and_register/loginPage.dart';
import 'package:nutriapp/modules/login_and_register/recoverPage.dart';
import 'package:nutriapp/modules/login_and_register/registerPage.dart';
import 'package:nutriapp/modules/information_init/infoPage.dart';
import 'package:nutriapp/modules/user/politics/politics.dart';
import 'package:nutriapp/modules/user/profile/profileSinEdicion.dart';
import 'package:nutriapp/modules/user/profile/profileConEdicion.dart';
import 'package:nutriapp/modules/user/sidebar/sidebarLayout.dart';

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
      home: const /*SideBarlayout()*/ ChangeAccountPage(),
    );
  }
}
