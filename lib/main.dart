import 'package:date_base/date_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<DateModel>(
        create: (_) => DateModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('idol'),
          ),
          body: Consumer<DateModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.idolText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('button'),
                    onPressed: () {
                      model.changeIdolText();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
