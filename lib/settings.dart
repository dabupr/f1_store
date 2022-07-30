import 'package:flutter/material.dart';
import 'package:f1_store/pages/home_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Widget _signOutButtonLocal() {
    return ElevatedButton(onPressed: HomePage().singOut, child: const Text('Sign out'));
  }
  Widget getBodySettings() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
       _signOutButtonLocal(),
      ],
    );

    //return Container();
  }
}
