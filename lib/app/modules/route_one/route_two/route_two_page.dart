import 'package:flutter/material.dart';

class RouteTwoPage extends StatefulWidget {
  final String title;
  const RouteTwoPage({Key key, this.title = "RouteTwo"}) : super(key: key);

  @override
  _RouteTwoPageState createState() => _RouteTwoPageState();
}

class _RouteTwoPageState extends State<RouteTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text('Route Two'),
        ],
      ),
    );
  }
}
