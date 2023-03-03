import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarNav extends StatelessWidget {
  String title;

  AppBarNav({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: const Color.fromARGB(255, 198, 43, 77),
          title: Text(title),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
          ],
        );
  }
}