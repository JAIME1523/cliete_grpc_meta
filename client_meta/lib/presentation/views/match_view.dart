
import 'package:client_meta/core/router/svg_router.dart';
import 'package:client_meta/presentation/pages/home_page.dart';
import 'package:client_meta/presentation/data/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/service/conect_service.dart';
import 'package:client_meta/presentation/widgets/widgets.dart';

class MatchView extends StatelessWidget {
   
  const MatchView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     final provider = context.read<HomeProvider>();

    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height * 0.8,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowSvg(
              height:size.height *0.4 ,
              path: SvgRouter.warning),
            const SizedBox(height: 20),

            const Text('Inicie el servicio de emparejamiento desde su terminal para poder realizar conexión',
            maxLines: 3,
            
            overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 20),
                 PrimaryButton(
                  width: size.width < 640 ? size.width *0.8 :null,
                  ischarge: true,
            onPressed: () async {

              final resp = await ConectServices.matchmaking(context);
              provider.validateMact();
              // ignore: use_build_context_synchronously
              showMessage(
                  context,
                  resp.status
                      ? 'Se vincularon dispositivos'
                      : resp.info);
            },
            title: 'Emparejar'), 
          ],
        ),
      ),
    );
  }
    showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => const HomePage()), (route) => false);
  }
}