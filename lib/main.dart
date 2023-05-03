import 'package:flutter/material.dart';

import 'logIn.dart';

void  main() {
  runApp(fisrtproj());
}
class fisrtproj extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginscreen(),

      title: "appName",
      debugShowCheckedModeBanner: false,
    );
  }
   
 
}