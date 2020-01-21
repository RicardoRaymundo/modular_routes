import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  final String title;
  const OnePage({Key key, this.title = "RouteOne"}) : super(key: key);

  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
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
                Navigator.pushNamed(context, '/one/two');
              },
            ),
          ],
        ),
      ),
    );
  }
}
