import 'package:flutter/material.dart';
import 'package:profile/core/core.dart';
import 'package:profile/home/home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      ),
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 50.0,
                        child: Center(
                          child: Image.asset(AppImages.logo),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        "Portfolio Italo Santos",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),      
              	SizedBox(
                 height: 50,
                 ),
                    Text(
                      "Lorem esse aliqua.",
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
