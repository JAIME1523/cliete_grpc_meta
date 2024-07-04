
import 'package:client_meta/presentation/data/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:nav_service/nav_service.dart';
import 'package:provider/provider.dart';

import 'package:client_meta/presentation/pages/home_page.dart';
import 'package:client_meta/presentation/data/service/helper/local_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();
  runApp(ChangeNotifierProvider(
      create: (_) => HomeProvider()..validateMact(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: NavService.navigatorKey,
        debugShowCheckedModeBanner: false,
        home: const HomePage());
  }
}
