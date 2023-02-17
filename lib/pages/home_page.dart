import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void firetoast() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Dialog Title',
      desc: 'Dialog description here.............',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            firetoast();
          },
          child: Container(
            height: 36,
            width: 100,
            color: Colors.brown,
            child: const Center(
              child: Text(
                "Dialog",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.amberAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
