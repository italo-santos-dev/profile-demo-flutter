import 'package:flutter/material.dart';
import 'package:profile_demo/constants.dart';
import 'package:profile_demo/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Color(0xFFD291BC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}