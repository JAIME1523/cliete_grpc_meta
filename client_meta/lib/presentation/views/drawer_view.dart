import 'package:client_meta/presentation/data/provider/provider.dart';
import 'package:client_meta/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../data/service/helper/local_storage.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final provider = context.watch<HomeProvider>();
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            if (size.width < 350)
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
              ),
            Align(
              alignment: Alignment.center,
              child:
                  provider.isEditing ? const _EditdConect() : const _ShowInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

class _EditdConect extends StatelessWidget {
  const _EditdConect();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomInputField(
            onChange: (val) {
              provider.validateForm();
            },
            hintText: 'Direccion IP',
            controller: provider.ipgController,
          ),
          CustomInputField(
            onChange: (val) {
              provider.validateForm();
            },
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            hintText: 'Puerto',
            controller: provider.porgController,
          ),
          PrimaryButton(
              ischarge: true,
              onPressed: provider.isCanSave
                  ? () async {
                      await provider.saveInfo();
                      // ignore: use_build_context_synchronously
                     Navigator.pop(context);
                    }
                  : null,
              height: 40,
              width: 120,
              title: 'Editar')
        ],
      ),
    );
  }
}

class _ShowInfo extends StatelessWidget {
  const _ShowInfo();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
final styleText = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Dirección Ip:',  style: styleText.bodySmall,),
        Text(LocalStorage.getIpAdrres(), style: styleText.titleMedium,),
        const SizedBox(height: 20),

        Text('Puerto de conexión: ',  style: styleText.bodySmall,),
        Text( LocalStorage.getPort().toString(),  style: styleText.titleMedium,),
        const SizedBox(height: 20),
        PrimaryButton(
            onPressed: () {
              provider.isEditing = true;
              provider.ipgController.text = LocalStorage.getIpAdrres();
              provider.porgController.text =  LocalStorage.getPort().toString();
            },
            height: 40,
            width: 120,
            title: 'Editar')
      ],
    );
  }
}
