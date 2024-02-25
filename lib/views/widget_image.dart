// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetImage extends StatelessWidget {
  const WidgetImage({
    Key? key,
    required this.path,
    this.size,
  }) : super(key: key);

  final String path;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: size,
      height: size,
    );
  }
}
