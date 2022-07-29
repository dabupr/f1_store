import 'package:f1_store/auth.dart';
import 'package:f1_store/pages/home_page.dart';
import 'package:f1_store/pages/login_register_page.dart';
import 'package:flutter/material.dart';
import 'package:f1_store/main.dart';

class WidgetTree extends StatefulWidget {
  WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot){
        if (snapshot.hasData){
          return  const MyHomePage(title: "F1",);
        }else{
          return LoginPage();
        }
      } ,


    );
  }
}