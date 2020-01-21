import 'package:flutter/material.dart';
import 'package:modular_routes/app/modules/home/home_module.dart';
import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_controller.dart';
import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_module.dart';

class PassParameterPage extends StatefulWidget {
  final int id;

  final String title;
  const PassParameterPage({Key key, this.title = "Pass Parameters", int this.id})
      : super(key: key);

  @override
  _PassParameterPageState createState() => _PassParameterPageState();
}

class _PassParameterPageState extends State<PassParameterPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    print('>>>ID<<<');
    MainPassParameterController mainPassParameterController = MainPassParameterModule.to.get<MainPassParameterController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(mainPassParameterController.fruits[widget.id]),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('<-- Back to Home'),
              onPressed: (){
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
            RaisedButton(
              child: Text('go to page Two'),
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, '/one/two', ModalRoute.withName('/'));
              },
            ),
          ],
        ),
      ),
    );
  }
}

