import 'package:amin/models/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryTextField extends StatefulWidget {
  const PrimaryTextField({super.key});

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  bool focused = false;

  void setFocused(bool value) {
    setState(() {
      focused = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefix: SvgPicture.asset(
            'assets/images/User.svg',
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: AppColors.grey,
              width: 2,
            )
          )
        ),
      ),
    );
  }
}
