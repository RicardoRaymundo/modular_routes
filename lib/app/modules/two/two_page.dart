import 'package:flutter/material.dart';

class TwoPage extends StatefulWidget {
  final String title;
  const TwoPage({Key key, this.title = "Two"}) : super(key: key);

  @override
  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {
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
            Text('Two'),
            SizedBox(height: 20,),
            /*RaisedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/one/two', ModalRoute.withName('/'));
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
