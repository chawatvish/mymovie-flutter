import 'package:flutter/material.dart';

class MovieItemWidget extends StatelessWidget {
  final Color bgColor;

  const MovieItemWidget({
    Key? key,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      color: bgColor,
    );
  }
}
