import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        // YouTube Logo
        Image.asset(
          'assets/images/youtube.jpg',
          height: 30,
        ),
        const SizedBox(width: 10),
        const Text(
          'YouTube',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.search, color: Colors.white),
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.notifications, color: Colors.white),
        onPressed: () {},
      ),
    ],
  );
}



