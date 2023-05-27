import 'package:flutter/material.dart';

class GoogleSignInView extends StatelessWidget {
  const GoogleSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}
