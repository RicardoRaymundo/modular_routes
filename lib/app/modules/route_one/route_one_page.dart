import 'package:flutter/material.dart';

class RouteOnePage extends StatefulWidget {
  final String title;
  const RouteOnePage({Key key, this.title = "RouteOne"}) : super(key: key);

  @override
  _RouteOnePageState createState() => _RouteOnePageState();
}

class _RouteOnePageState extends State<RouteOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Page One'),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Route Two -->'),
              onPressed: (){
                Navigator.pushNamed(context, '/route-two');
              },
            ),
          ],
        ),
      ),
    );
  }
}
