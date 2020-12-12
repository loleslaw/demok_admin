import 'package:demok_admin/10_views/loading_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '10_views/11_stack/00_stack_page.dart';

import '20_controllers/pages_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<PagesController>(PagesController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('coś poszło nie tak');
            return Text(snapshot.error.toString());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'DEMOK',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: StackPage(),
            );
          }
          return LoadingPage();
        });
  }
}
