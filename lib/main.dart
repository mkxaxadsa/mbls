import 'package:flutter/material.dart';
import 'package:MestlyBest/app/app.dart';
import 'package:MestlyBest/managers/hive_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveManager.init();
  runApp(const MostBetApp());
}
