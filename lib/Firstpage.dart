import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Firstpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Provider")),
      body: ChangeNotifierProvider(create: (context) => Modal(),child: Consumer<Modal>(builder: (context, value, child) {
        return Column(children: [
          Text("${value.cnt}"),
          ElevatedButton(onPressed: () {

            value.incremant();

          }, child: Text("Increment")),
        ]);
      },)),

    );
  }
}

class Modal extends ChangeNotifier{

  int cnt = 0;

  void incremant() {
    cnt++;
    notifyListeners();
  }

}
