import 'package:flutter/material.dart';

AppBar buildAppbar() {
  return AppBar(
    title: Text('Dashboard',style: TextStyle(color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.blueAccent,
    actions: [
      IconButton(icon: Icon(Icons.search), onPressed: (){})],

  );
}