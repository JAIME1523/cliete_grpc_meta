import 'package:client_meta/presentation/data/service/conect_service.dart';
import 'package:client_meta/presentation/data/service/helper/local_storage.dart';
import 'package:client_meta/presentation/data/service/secure/secure_stor.dart';
import 'package:client_meta/presentation/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nav_service/nav_service.dart';
import 'package:server_grpc/database/models/transaction_grpc_model.dart';

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

  saveInfo() async {
    await LocalStorage.setInt(
        PreferencesInt.port, int.tryParse(porgController.text) ?? 8080);
    await LocalStorage.setString(
        PreferencesString.ipAddres, ipgController.text);
  }

  alertInsert() {
    TextEditingController monto = TextEditingController();

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
                    controller: monto,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        isLoading = true;
                        final int newmont = int.parse(monto.text);
                        NavService.pop();

                        final resp =
                            await ConectServices.insertTransaction(newmont);
                        if (resp.transcion != null) {
                          transacintionSave.add(resp.transcion!);
                        }
                        isLoading = false;
                      },
                      child: const Text('Ok'))
                ],
              ),
            ),
          );
        });
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
