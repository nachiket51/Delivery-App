import 'package:delivery_app/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await initItems();
  runApp(const DeliveryApp());
}

initItems() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
}
