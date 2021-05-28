import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:english_words/english_words.dart';

import 'package:profile/models/project_model.dart';

// ignore: avoid_web_libraries_in_flutter
//import 'dart:html' as html;

class ProjecComponentWidget extends StatefulWidget {
  final Project _project;
  final double _bottomPadding;
  ProjecComponentWidget(this._project, this._bottomPadding, {size});

  @override
  _ProjecComponentWidgetState createState() => _ProjecComponentWidgetState();
}

class _ProjecComponentWidgetState extends State<ProjecComponentWidget> {
  final _saved = Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, widget._bottomPadding),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 40,
                child: Image.asset(
                  widget._project.image,
                  width: width * .25,
                  height: width * .25,
                ),
              ),
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
                        widget._project.name,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text(
                        widget._project.description,
                        textScaleFactor: 1.2,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          // IconButton(
                          //   icon: Icon(Icons.favorite),
                          //   onPressed: () {},
                          // ),
                          // IconButton(
                          //   icon: Icon(Icons.share),
                          //   onPressed: () {
                          //     Share.share(
                          //       "Please Visit https://github.com/dev-italosantos",
                          //     );
                          //   },
                          // ),
                          Expanded(
                            flex: 3,
                            child: _buildRow(_saved),
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

  Widget _buildRow(pair) {
    final alreadySaved = _saved.contains(pair);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        IconButton(
          icon: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
          ),
          onPressed: () {
            setState(() {
              if (alreadySaved) {
                _saved.remove(pair);
              } else {
                _saved.add(pair);
              }
            });
          },
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            Share.share(
              "Please Visit https://github.com/dev-italosantos",
            );
          },
        ),
      ],
    );
  }
}
