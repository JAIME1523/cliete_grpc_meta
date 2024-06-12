import 'package:flutter/material.dart';

class AmiatedPage extends StatefulWidget {
  const AmiatedPage({Key? key}) : super(key: key);

  @override
  State<AmiatedPage> createState() => _AmiatedPageState();
}

class _AmiatedPageState extends State<AmiatedPage> {
  double _targetSize = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: TweenAnimationBuilder(
          tween: Tween<double>(
            begin: 50,
            end: _targetSize,
          ),
          duration: const Duration(seconds: 2),
          onEnd: () {
            setState(() {
              if (_targetSize == 50) {
                _targetSize = 300;
              } else {
                _targetSize = 50;
              }
            });
          },
          curve: Curves.linear,
          builder: (BuildContext _, double size, Widget? __) {
            return Container(
              width: size,
              height: size,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
            );
          },
        ),
      ),
    );
  }
}
