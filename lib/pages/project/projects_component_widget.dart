import 'package:flutter/material.dart';
import 'package:profile_demo/models/Project.dart';

class ProjecComponentWidget extends StatefulWidget {
  final Project _project;
  final double _bottomPadding;
  ProjecComponentWidget(this._project, this._bottomPadding, {size});

  @override
  _ProjecComponentWidgetState createState() => _ProjecComponentWidgetState();
}

class _ProjecComponentWidgetState extends State<ProjecComponentWidget> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, widget._bottomPadding),
      child: InkWell(
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
                        textAlign: TextAlign.justify,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text(
                        widget._project.description,
                        textAlign: TextAlign.justify,
                        textScaleFactor: 1.2,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
