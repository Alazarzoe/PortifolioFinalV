import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portifolio/pages/loginPage.dart';
import 'package:portifolio/pages/profileEdit.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: const Color.fromARGB(255, 194, 194, 194),
        child: DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'lib/assets/images/p7.jpg',
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfileEdit()),
                          );
                        },
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    decoration: BoxDecoration(
                        //color: Color.fromARGB(255, 242, 86, 86),
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Log out',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
