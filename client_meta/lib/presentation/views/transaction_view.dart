import 'package:client_meta/presentation/data/provider/home_provider.dart';
import 'package:client_meta/presentation/widgets/custom_snack.dart';
import 'package:client_meta/presentation/widgets/info_trancaction.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/service/conect_service.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /*   ElevatedButton(
            onPressed: () async {
              print(
                  'Este es el counter ${LocalStorage.getInt(PreferencesInt.counter)}');
            },
            child: Text('Imprimer counter')),
        ElevatedButton(
            onPressed: () async {
              await LocalStorage.setInt(PreferencesInt.counter, 1);
              print(
                  'Este es el counter ${LocalStorage.getInt(PreferencesInt.counter)}');
            },
            child: Text('Limpiar counter')),
        ElevatedButton(
            onPressed: () async {
              await ConectServices.generatePairKey();
            },
            child: const Text('Gnerar llaves encr')),
        ElevatedButton(
            onPressed: () async {
              final resp = await ConectServices.matchmaking(context);
              // ignore: use_build_context_synchronously
              showMessage(
                  context,
                  resp
                      ? 'Se vincularon dispositivos y se guardo la macKey'
                      : 'Algo fallo :(');
            },
            child: const Text('Emparejar')), */
        ElevatedButton(
            onPressed: () async {
              provider.alertInsert();
            },
            child: const Text('Registrar transacción')),
        const SizedBox(height: 25),
        ElevatedButton(
            onPressed: () async {
              final resp = await showIdModal(context);
              if (resp.isNotEmpty) {
                final resul = await ConectServices.getTransaction(resp);
                if (resul.transcion != null) {
                 if( resul.transcion!.status != null)provider.updateElemnt(id:resp, status: resul.transcion!.status!);
                  
                  InfoTranction.showTran(resul.transcion!);
                  return;
                }
                CustomSnack.errorSnack(resul.info);
              }
            },
            child: const Text('Información de transacción')),
        const SizedBox(height: 25),
        ElevatedButton(
            onPressed: () async {
              final resp = await showIdModal(context);
              if (resp.isNotEmpty) await ConectServices.getStatus(resp);
            },
            child: const Text('Estatus de transacción')),
        const SizedBox(height: 25),
     /*    ElevatedButton(
          onPressed: () async {
            await ConectServices.testC();
          },
          child: const Text('TESS'),
        ), */
        ElevatedButton(
          onPressed: () async {
            final resp = await showIdModal(context);
            if (resp.isNotEmpty) await ConectServices.startTransaccion(resp);
          },
          child: const Text('Iniciar proceso de cobro'),
        ),
        const SizedBox(height: 25),
        
        if (provider.transacintionSave.isNotEmpty)
          ElevatedButton(
            onPressed: () async {
              InfoTranction.showLisTrac(provider.transacintionSave);
            },
            child: const Text('transacciones registradas'),
          )



  
      ],
    );
  }

  showInfo() {}
  Future<String> showIdModal(BuildContext context) async {
    TextEditingController idTr = TextEditingController();
    await showDialog(
        context: context,
        builder: (_) {
          final size = MediaQuery.sizeOf(context);
          return AlertDialog(
            content: SizedBox(
              height: size.height * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Ingresa ID'),
                  TextField(
                    controller: idTr,
                    /*   keyboardType: TextInputType.number, */
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(idTr.text.trim());
                      },
                      child: const Text('Ok'))
                ],
              ),
            ),
          );
        });
    return idTr.text;
  }
}
