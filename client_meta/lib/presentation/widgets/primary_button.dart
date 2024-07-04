
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    this.height,
    this.width,
    required this.title,
    this.textStyle,
    this.backgroundColor,
    this.onPressed,
    this.borderRadius = 20,
    this.fontSize,
    this.textColor,
    this.ischarge = false,
    this.getisLoading = false,
  });
  final String title;
  final double borderRadius;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? textColor;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final bool ischarge;
  final bool getisLoading;

  final Function()? onPressed;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isLoading = false;
  bool _dispose = true;

  bool get isLoading => _isLoading;
  set isLoading(bool value) {
    _isLoading = value;
  if(_dispose == true)   setState(() {});
  }
  @override
  void dispose() {
    _dispose = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: widget.height ?? size.height * 0.065,
      width: widget.width ?? size.width * 0.20,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          backgroundColor: widget.backgroundColor ?? colors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.borderRadius),
            ),
          ),
        ),
        onPressed: widget.onPressed == null || isLoading || widget.getisLoading
            ? null
            : () async {
                if (widget.ischarge) isLoading = true;
                await widget.onPressed!();
                if (widget.ischarge) isLoading = false;
              },
        child: isLoading || widget.getisLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Text(
                widget.title,
                textAlign: TextAlign.center,
                style: widget.textStyle ??
                    TextStyle(
                        color: widget.textColor ?? Colors.white,
                        fontSize: widget.fontSize),
              ),
      ),
    );
  }
}
