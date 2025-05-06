import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String header;
  const HeaderText({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Text(
          header,
          style: TextStyle(color: Colors.white, fontSize: 24),
        );
  }
}