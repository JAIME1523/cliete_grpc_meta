import 'package:client_meta/presentation/views/drawer_view.dart';
import 'package:client_meta/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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
              child: provider.isPrcessTransac
                  ? const _PregressTransaction()
                  : provider.isLoading
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

class _PregressTransaction extends StatelessWidget {
  const _PregressTransaction();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Lottie.asset(
              'assets/json/progress_bar 2.json'),
          ),
          const Text('Procesando'),
      if(provider.showButton)    PrimaryButton(title: 'Cancelar Proceso',
          ischarge: true,
          onPressed: ()async{
            await provider.cancelProces();
          },
          )
      ],
    );
  }
}
