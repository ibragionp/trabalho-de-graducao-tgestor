import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tgestor/modules/common/app_bindings.dart';
import 'package:tgestor/modules/landing/landing_page.dart';
import 'package:tgestor/modules/login/login_page.dart';
import 'package:tgestor/modules/recover_access/recover_access_page.dart';
import 'package:tgestor/modules/sign_up/sign_up_bindings.dart';
import 'package:tgestor/modules/sign_up/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecoverAccessPage(),
    );
  }
}
