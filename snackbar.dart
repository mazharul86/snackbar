import 'dart:html';

import 'package:flutter/material.dart';

class Snkbr extends StatefulWidget {
  const Snkbr({Key? key}) : super(key: key);

  @override
  State<Snkbr> createState() => _SnkbrState();
}

class _SnkbrState extends State<Snkbr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Builder(
                builder: (BuildContext context) {
                  return RaisedButton(
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(SnackBar(
                          padding: EdgeInsets.all(20),
                          elevation: 40,
                          action: SnackBarAction(
                            label: "label",
                            onPressed: () {},
                          ),
                          backgroundColor: Colors.cyan,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("This is SnackBar"),
                              Icon(
                                Icons.railway_alert,
                                color: Colors.white,
                              ),
                            ],
                          )));
                    },
                    child: Text("SnackBar"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
