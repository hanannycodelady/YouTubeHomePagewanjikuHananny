import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        Image.asset(
          'assets/images/tube-removebg-preview.png',
          height: 60,
        ),
        const SizedBox(width: 10),
        const Text(
          '',
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


