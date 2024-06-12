import 'package:client_meta/presentation/service/conect_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cliente'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
                onPressed: () async {
                  await ConectServices.generatePairKey();
                },
                child: const Text('Gnerar llaves encr')),
                ElevatedButton(
                onPressed: () async {
                final resp =   await ConectServices.matchmaking(context);
                // ignore: use_build_context_synchronously
                showMessage(context, resp? 'Se vincularon dispositivos y se guardo la macKey':'Algo fallo :(');
                },
                child: const Text('Emparejar')),
            ElevatedButton(
                onPressed: () async {
                  await ConectServices.insertTransaction();
                },
                child: const Text('insert Tran')),
            ElevatedButton(
                onPressed: () async {
                 final resp =  await showIdModal(context);
                 if( resp.isNotEmpty ) await ConectServices.getTransaction(resp);
                },
                child: const Text('getTransaction')),
            ElevatedButton(
                onPressed: () async {
                    final resp =  await showIdModal(context);
                 if(resp.isNotEmpty ) await ConectServices.getStatus(resp);
                },
                child: const Text('getStatus')),
            ElevatedButton(
              onPressed: () async {
                await ConectServices.testC();
              },
              child: const Text('TESS'),
            ),
            ElevatedButton(
              onPressed: () async {
                  final resp =  await showIdModal(context);
                 if(resp.isNotEmpty ) await ConectServices.startTransaccion(resp);
              },
              child: const Text('startTransaction'),
            ),
          ],
        ),
      ),
    );
  }
Future<String> showIdModal(BuildContext context) async {
    TextEditingController idTr = TextEditingController();
  await  showDialog(context: context, builder: (_){
    final size = MediaQuery.sizeOf(context);
    return AlertDialog(
      content: SizedBox(
        height: size.height *0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Ingresa ID'),
            TextField(
              controller: idTr,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(onPressed: (){Navigator.of(context).pop(idTr.text);}, child: const Text('Ok'))
          ],
        ),
      ),
    );});
    return idTr.text;
  }

  showMessage(BuildContext context, String message){
  ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text( message)));
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const HomePage()), (route) => false);
  }
}
