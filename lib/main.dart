import 'package:flutter/material.dart';
import 'package:show_fps/show_fps.dart';
import 'package:vetapp/core/presentation/layout/main_layout.dart';
import 'package:vetapp/core/theme/custom_theme.dart';
import 'package:vetapp/presentation/clients_list/clients_list_view.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: CustomTheme.getLightTheme().copyWith(
        cardTheme: CardTheme(
          color:  CustomTheme.getLightTheme().colorScheme.surface
        )
      ),
      home: ShowFPS(
        alignment: Alignment.topRight,
        visible: true,
        showChart: false,
        borderRadius: BorderRadius.all(Radius.circular(11)),
        child: DashboardScreen(),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  MainLayout(child: ClientsListView(),)
    );
  }
}
