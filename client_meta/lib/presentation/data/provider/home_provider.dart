import 'package:client_meta/presentation/data/service/conect_service.dart';
import 'package:client_meta/presentation/data/service/helper/local_storage.dart';
import 'package:client_meta/presentation/data/service/secure/secure_stor.dart';
import 'package:client_meta/presentation/widgets/custom_input.dart';
import 'package:client_meta/presentation/widgets/custom_snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nav_service/nav_service.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';
import 'package:server_grpc/grpc_data/grpc_data.dart';

class HomeProvider extends ChangeNotifier {
  bool _isMatch = false;
  bool _isLoading = false;
  bool _isEditing = false;
  bool _isCanSave = false;
  List<TransactionGRpcModel> transacintionSave = [];

  String ipConfig = LocalStorage.getIpAdrres();
  int port = LocalStorage.getPort();

  TextEditingController ipgController = TextEditingController();
  TextEditingController porgController = TextEditingController();

  validateForm() {
    if (ipgController.text != LocalStorage.getIpAdrres() ||
        porgController.text != LocalStorage.getPort().toString())
      return isCanSave = true;
    isCanSave = false;
  }

  updateElemnt({required String id, required TransactionStatus status}) {
    for (var i = 0; i < transacintionSave.length; i++) {
      final tra = transacintionSave[i];
      if (tra.idProtoTransaction == id) {
        transacintionSave[i] = transacintionSave[i].copyWith(status: status);
      }
    }
  }

  saveInfo() async {
    await LocalStorage.setInt(
        PreferencesInt.port, int.tryParse(porgController.text) ?? 8080);
    await LocalStorage.setString(
        PreferencesString.ipAddres, ipgController.text);
  }

  alertInsert() {
    final TextEditingController _monto = TextEditingController();

    final context = NavService.contextNav;
    showDialog(
        context: context,
        builder: (_) {
          final size = MediaQuery.sizeOf(context);
          return AlertDialog(
            content: SizedBox(
              height: size.height * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Ingresa monto'),
                  CustomInputField(
                    onSubmitted: (va) {
                      sendInert(_monto.text);
                    },
                    controller: _monto,
                    keyboardType: TextInputType.number,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        sendInert(_monto.text);
                      },
                      child: const Text('Ok'))
                ],
              ),
            ),
          );
        });
  }

  sendInert(String amontR) async {
    final amontArray = amontR.split('.');
    if (amontArray.length <= 1) {
      amontArray.add('00');
    }
    amontArray[1] = amontArray[1].padRight(2, '0');
    amontArray[1].padRight(2, '0');
    final amont = amontArray.join();
    print('este $amont');
    NavService.pop();
    if (amont.isEmpty || amont == '0' || amont == '0.00' || amont == '0.0') {
      return;
    }

    final int newmont = int.tryParse(amont) ?? 0;
    if (newmont == 0){
      CustomSnack.errorSnack('Valor invalido');
       return;}
    isLoading = true;

    final resp = await ConectServices.insertTransaction(newmont);
    if (resp.transcion != null) {
      transacintionSave.add(resp.transcion!);
    }
    isLoading = false;
  }

  cleanFrom() {
    ipgController.clear();
    porgController.clear();
    isEditing = false;
    isCanSave = false;
  }

  validateMact() async {
    isLoading = true;
    final mac = await SecureStor.readStorage(SecureList.macKey);
    isMatch = mac == null ? false : true;
    isLoading = false;
  }

  bool get isMatch => _isMatch;
  set isMatch(bool value) {
    _isMatch = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isEditing => _isEditing;
  set isEditing(bool value) {
    _isEditing = value;
    notifyListeners();
  }

  bool get isCanSave => _isCanSave;
  set isCanSave(bool value) {
    _isCanSave = value;
    notifyListeners();
  }
}
