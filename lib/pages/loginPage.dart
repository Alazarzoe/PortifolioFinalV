import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'Login Page',
            style: TextStyle(
              fontSize: 30,
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 71, 71, 71),
                borderRadius: BorderRadius.circular(5)),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
