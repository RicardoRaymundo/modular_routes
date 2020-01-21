import 'package:flutter/material.dart';
import 'package:modular_routes/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeController();

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
            Text('Home Page'),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Route One -->'),
              onPressed: (){
                Navigator.pushNamed(context, '/one');
              },
            ),
            RaisedButton(
              child: Text('Pass Parameters'),
              onPressed: (){
                Navigator.pushNamed(context, '/main-pass-parameter');
              },
            ),
          ],
        ),
      ),
    );
  }
}
