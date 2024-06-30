import 'package:flutter/material.dart';
import 'package:flutter_application_getx_to_other/models/provider/provider.dart';
import 'package:flutter_application_getx_to_other/views/homes_views.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageData().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Get X',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KsiHome(),
    );
  }
}
