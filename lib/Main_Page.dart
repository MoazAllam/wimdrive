import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'pages/HomePage.dart';
import 'pages/NoInternetPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool activeConnection = false;

  var connectionStatus = 0.obs;

  late StreamSubscription<InternetConnectionStatus> _listener;

  @override
  void initState() {
    _listener = InternetConnectionChecker()
        .onStatusChange
        .listen((InternetConnectionStatus status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          connectionStatus.value = 1;
          break;
        case InternetConnectionStatus.disconnected:
          connectionStatus.value = 0;
          break;
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _listener.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => connectionStatus.value == 1
          ? const HomePage()
          : const NoInternetPage(),
    );
  }
}
