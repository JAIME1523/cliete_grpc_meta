
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowSvg extends StatelessWidget {
   final String path;
   final  double? width;
  final double? height;
  final BoxFit fit ;
  const ShowSvg({Key? key, required this.path, this.width, this.height,  this.fit = BoxFit.contain}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(path,
    width:width ,
    height: height,
    fit:fit ,
    );
  }

}