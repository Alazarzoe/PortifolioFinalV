import 'package:flutter/material.dart';
import 'package:portifolio/model/person.dart';
import 'package:portifolio/widget/drawer.dart';
import '../utils/constant.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _mobileLayoutState();
}

Person person1 = Person(
  description:
      'Alazar is Passionate Mobile developer who is eager to contribute to team success through hard work, attention to detail, and excellent problem-solving skills. Pays detailed attention to writing clean, efficient, and maintainable code using clean architecture and SOLID principles.',
  name: "Hi I'm Alazar Tamiru ",
  title: "Flutter Developer and UI/UX Designer",
  experience:
      '" Has hands-on two year experience in Android, iOS, Flutter, Java, Kotlin, Javascript and Dart "',
);

class _mobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  iconBool = !iconBool;
                });
              },
              icon: Icon(
                iconBool ? iconDark : iconLight,
                size: 30,
              ),
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          'Portifolio',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
          child: Container(
            decoration: BoxDecoration(border: Border.all(width: 3)),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                  child: Container(
                    height: 250,
                    decoration: const BoxDecoration(
                      //color: Colors.amber,
                      image: DecorationImage(
                          image: AssetImage('lib/assets/images/p7.jpg'),
                          fit: BoxFit.cover),
                      //color: Colors.yellow,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    person1.getName().toUpperCase(),
                    style: const TextStyle(
                      fontSize: 30,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    person1.getTitle(),
                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.2,
                      color: Color.fromARGB(255, 98, 98, 98),
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    '#Ethiopia  #Addis Abeba  #Age #22 \n#English  #Amharic  #Spanish',
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.2,
                      color: Color.fromARGB(255, 114, 114, 114),
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'What i can offer'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 24,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 5),
                  child: Text(
                    person1.getDescription(),
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(person1.getExpriance(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 54, 54, 54),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Some of the clients'.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10),
                  child: ColoredBox(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Image(
                            image: AssetImage(
                              'lib/assets/images/KM.png',
                            ),
                            width: 70,
                            color: Colors.white,
                          ),
                          Image(
                            image: AssetImage(
                              'lib/assets/images/gm.png',
                            ),
                            width: 70,
                          ),
                          Image(
                            image: AssetImage(
                              'lib/assets/images/ol.png',
                            ),
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('HIT ME UP!',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () => urlLauncher(
                            "https://app.slack.com/client/T042F7V19Q8/D048SABM64W/help/115004151203"),
                        child: Image(
                          image: AssetImage('lib/assets/images/slack.png'),
                          width: 35,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            urlLauncher("https://github.com/Alazarzoe"),
                        child: Image(
                          image: AssetImage('lib/assets/images/gt.png'),
                          width: 35,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            urlLauncher("https://twitter.com/AlazarTamiru_"),
                        child: Image(
                          image: AssetImage('lib/assets/images/tw.png'),
                          width: 35,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () => urlLauncher(
                            "https://www.linkedin.com/in/alazar-tamiru-b6b587196/"),
                        child: Image(
                          image: AssetImage('lib/assets/images/ln.png'),
                          width: 35,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const Center(
                  child: Text(
                    '© 2022 by Alazar Tamiru ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
