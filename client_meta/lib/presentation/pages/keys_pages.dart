import 'package:client_meta/presentation/data/service/encrypt/encrypt_service.dart';
import 'package:client_meta/presentation/data/service/encrypt/mac_counter.dart';
import 'package:flutter/material.dart';

import '../data/service/encrypt/rsa_service.dart';

class KeysPage extends StatelessWidget {
  const KeysPage({Key? key}) : super(key: key);

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
                  await RsaService.generate();
                },
                child: const Text('Generar llave')),
            ElevatedButton(
              onPressed: () async {
                await RsaService.showKeys();
              },
              child: const Text('imprimir llave'),
            ),

              ElevatedButton(
              onPressed: () async {
                await EncryptService.encriptMac();
              },
              child: const Text('Encrypt mac'),
              
            ),
              ElevatedButton(
              onPressed: () async {
                await EncryptService.macDecript();
              },
              child: const Text('Save MacKey'),),
  ElevatedButton(
              onPressed: () async {
                await MacCounter.generateMac();
              },
              child: const Text('genererate HMCSha256'),
            ),
            
          ],
        ),
      ),
    );
  }
}
