import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project'),
      ),
      body: Center(
        child: Text('Bienvenue sur l\'écran d project !'),
      ),
    );
  }
}