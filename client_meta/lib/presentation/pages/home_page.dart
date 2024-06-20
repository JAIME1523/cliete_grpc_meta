import 'package:client_meta/presentation/views/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:client_meta/presentation/views/views.dart';
import '../data/provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      onEndDrawerChanged: (isOpened) {
        provider.cleanFrom();
      },
      endDrawer: const DrawerView(),
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child: provider.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        provider.isMatch
                            ? const TransactionView()
                            : const MatchView()
                      ],
                    )),
        ),
      ),
    );
  }
}
