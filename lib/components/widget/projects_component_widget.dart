import 'package:flutter/material.dart';
import 'package:profile/core/app_images.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:profile/models/project_model.dart';

class ProjecComponentWidget extends StatelessWidget {
  final Project _project;
  final double _bottomPadding;
  ProjecComponentWidget(this._project, this._bottomPadding, {size});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: onProjectClick,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                  flex: 40,
                  child: Image.asset(
                    _project.image,
                    width: width * .25,
                    height: width * .25,
                  )),
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        _project.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text(
                        _project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),

			Row(
			mainAxisAlignment: MainAxisAlignment.end,
			children:  <Widget> [
						IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () {},
                         ),
                        IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {},
                        ),
			],
			),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onProjectClick() {
    // ignore: unnecessary_null_comparison
    if (_project.link != null) html.window.open(_project.link, 'adityadroid');
  }
}
