import 'package:flutter/material.dart';
import 'package:modular_routes/app/modules/main_pass_parameter/main_pass_parameter_controller.dart';

class MainPassParameterPage extends StatefulWidget {
  final String title;
  const MainPassParameterPage({Key key, this.title = "MainPassParameter"})
      : super(key: key);

  @override
  _MainPassParameterPageState createState() => _MainPassParameterPageState();
}

class _MainPassParameterPageState extends State<MainPassParameterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  ListView.builder(
        itemCount: MainPassParameterController().fruits.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(MainPassParameterController().fruits[index]),
            onTap: (){
              //Navigator.pushNamed(context, '/login', arguments: 0);
              Navigator.pushNamed(context, '/main-pass-parameter/pass-parameters/$index');
            },
          );
        },
      ),
    );
  }
}
