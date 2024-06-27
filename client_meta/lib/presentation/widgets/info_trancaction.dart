import 'package:client_meta/presentation/data/service/conect_service.dart';
import 'package:client_meta/presentation/utils/uitls_amont.dart';
import 'package:flutter/material.dart';
import 'package:nav_service/nav_service.dart';
import 'package:server_grpc/server_grpc.dart';

class InfoTranction {
  static final context = NavService.contextNav;

  static showLisTrac(List<TransactionGRpcModel> transacions) {
    showDialog(
        context: context,
        builder: (_) {
          final styleText = Theme.of(context).textTheme;
          final colors = Theme.of(context).colorScheme;
          final size = MediaQuery.sizeOf(context);
          return AlertDialog(
            content: SizedBox(
                width: size.width * 0.6,
                height: transacions.length > 1
                    ? size.height * 0.8
                    : size.height * 0.4,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(transacions.length, (index) {
                        final transacion = transacions[index];
                        return Banner(
                          location: BannerLocation.topEnd,
                          color: colors.onPrimaryContainer,
                          message: transacion.status != null
                              ? transacion.status!.name
                              : '',
                          child: Container(
                            width: size.width * 0.7,
                            child: Card(
                                color: colors.secondaryContainer,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      _ColumnInfo(
                                        title: 'Id',
                                        info:
                                            transacion.idProtoTransaction ?? '',
                                      ),
                                      _ColumnInfo(
                                        title: 'Monto',
                                        info: UtilsAmont.amontCustom(
                                            transacion.amount.toString()),
                                      ),
                                      _ColumnInfo(
                                        title: 'Estado',
                                        info: transacion.status != null
                                            ? transacion.status!.name
                                            : '',
                                        infoStyle: styleText.titleMedium!
                                            .copyWith(
                                                color:
                                                    transacion.status!.value ==
                                                            4
                                                        ? Colors.green
                                                        : transacion.status!
                                                                    .value ==
                                                                0
                                                            ? Colors.blue
                                                            : Colors.red),
                                      ),
                                      if (transacion.idProtoTransaction != null)
                                        ElevatedButton(
                                            onPressed: () async {
                                              await ConectServices
                                                  .startTransaccion(transacion
                                                      .idProtoTransaction!);
                                              NavService.pop();
                                            },
                                            child: const Text('Inicar cobro'))
                                    ],
                                  ),
                                )),
                          ),
                        );
                      })
                    ],
                  ),
                )),

            /*   ListView.builder(
                    itemCount: transacions.length,
                    itemBuilder: (_, index) {
                      final transacion = transacions[index];
                      return Container(
                        height: 300,
                        child: Column(
                          children: [
                            _ColumnInfo(
                              title: 'Id',
                              info: transacion.idProtoTransaction ?? '',
                            ),
                            _ColumnInfo(
                              title: 'Monto',
                              info: transacion.amount.toString(),
                            ),
                          ],
                        ),
                      );
                    })), */
            actions: [
              ElevatedButton(
                  onPressed: () {
                    NavService.pop();
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }

  static showTran(TransactionGRpcModel transacion) {
    showDialog(
        context: context,
        builder: (_) {
          final styleText = Theme.of(context).textTheme;

          final size = MediaQuery.sizeOf(context);
          return AlertDialog(
            content: SizedBox(
              height: transacion.arqc != null
                  ? size.height * 0.4
                  : size.height * 0.25,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _ColumnInfo(
                      title: 'Id',
                      info: transacion.idProtoTransaction ?? '',
                    ),
                    _ColumnInfo(
                      title: 'Monto',
                      info:
                          UtilsAmont.amontCustom(transacion.amount.toString()),
                    ),
                    _ColumnInfo(
                      title: 'Estatus',
                      infoStyle: styleText.titleMedium!.copyWith(
                          color: transacion.status!.value == 4
                              ? Colors.green
                              : transacion.status!.value == 0
                                  ? Colors.blue
                                  : Colors.red),
                      info: transacion.status != null
                          ? transacion.status!.name
                          : '',
                    ),
                    if (transacion.arqc != null)
                      _ColumnInfo(
                        title: 'arqc',
                        info: transacion.arqc ?? '',
                      ),
                    if (transacion.authorizationNumber != null)
                      _ColumnInfo(
                        title: 'N. Autorización ',
                        info: transacion.authorizationNumber ?? '',
                      ),
                    if (transacion.maskPan != null)
                      _ColumnInfo(
                        title: 'PAN',
                        info: transacion.maskPan ?? '',
                      ),
                    if (transacion.referenceNumber != null)
                      _ColumnInfo(
                        title: 'N. Referencia',
                        info: transacion.referenceNumber ?? '',
                      ),
                  ],
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    NavService.pop();
                  },
                  child: const Text('Ok'))
            ],
          );
        });
  }
}

class _ColumnInfo extends StatelessWidget {
  const _ColumnInfo({required this.title, required this.info, this.infoStyle});
  final String title;
  final String info;
  final TextStyle? infoStyle;
  @override
  Widget build(BuildContext context) {
    final styleText = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          title,
          style: styleText.bodySmall,
        ),
        SelectableText(
          info,
          style: infoStyle ?? styleText.titleMedium,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
