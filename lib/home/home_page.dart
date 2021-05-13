import 'package:flutter/material.dart';
import 'package:profile/home/widget/sections/top_section_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopSectionWidget(),
          ],
        ),
      ),
    );
  }
}
