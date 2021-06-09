import 'package:flutter/material.dart';
import 'package:profile_demo/models/project_model.dart';
import 'package:share/share.dart';

class ProjecComponentWidget extends StatefulWidget {
  final Project _project;
  final double _bottomPadding;
  ProjecComponentWidget(this._project, this._bottomPadding, {size});

  @override
  _ProjecComponentWidgetState createState() => _ProjecComponentWidgetState();
}

class _ProjecComponentWidgetState extends State<ProjecComponentWidget> {
  void onLike() {
    setState(() => _isPressed = !_isPressed);
  }

  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, widget._bottomPadding),
      child: InkWell(
        //onTap: onProjectClick,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              GestureDetector(
                                onTap: onLike,
                                child: Icon(
                                  _isPressed
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color:
                                      _isPressed ? Colors.red : Colors.black12,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.black12,
                                ),
                                onPressed: () {
                                  Share.share(
                                    "Please Visit https://github.com/dev-italosantos",
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
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
