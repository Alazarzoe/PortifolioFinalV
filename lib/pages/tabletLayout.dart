import 'package:flutter/material.dart';
import '../utils/constant.dart';
import '../widget/drawer.dart';
import 'mobileVersion.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.8,
                        height: 300,
                        decoration: const BoxDecoration(
                          //color: Colors.amber,
                          image: DecorationImage(
                              image: AssetImage('lib/assets/images/p7.jpg'),
                              fit: BoxFit.cover),
                          //color: Colors.yellow,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            person1.getName().toUpperCase(),
                            style: const TextStyle(
                              fontSize: 30,
                              height: 1.2,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            person1.getTitle(),
                            style: const TextStyle(
                              fontSize: 20,
                              height: 1.2,
                              color: Color.fromARGB(255, 98, 98, 98),
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '#Ethiopia  #Addis Abeba  #Age #24  #English  #Amharic  #Spanish',
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.2,
                              color: Color.fromARGB(255, 114, 114, 114),
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'What i can offer'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 30,
                      height: 1.2,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 10),
                  child: Text(
                    person1.getDescription(),
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(person1.getExpriance(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 54, 54, 54),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('Some of the clients'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      )),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30),
                  child: ColoredBox(
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Image(
                          image: AssetImage(
                            'lib/assets/images/KM.png',
                          ),
                          width: 120,
                          height: 60,
                          color: Colors.white,
                        ),
                        Image(
                          image: AssetImage(
                            'lib/assets/images/gm.png',
                          ),
                          width: 130,
                          height: 60,
                        ),
                        Image(
                          image: AssetImage(
                            'lib/assets/images/ol.png',
                          ),
                          width: 140,
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 10,
                  thickness: 2,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('HIT ME UP!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () => urlLauncher(
                            "https://app.slack.com/client/T042F7V19Q8/D048SABM64W/help/115004151203"),
                        child: Image(
                          image: AssetImage('lib/assets/images/slack.png'),
                          width: 48,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            urlLauncher("https://github.com/Alazarzoe"),
                        child: Image(
                          image: AssetImage('lib/assets/images/gt.png'),
                          width: 55,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () =>
                            urlLauncher("https://twitter.com/AlazarTamiru_"),
                        child: Image(
                          image: AssetImage('lib/assets/images/tw.png'),
                          width: 60,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        onPressed: () => urlLauncher(
                            "https://www.linkedin.com/in/alazar-tamiru-b6b587196/"),
                        child: Image(
                          image: AssetImage('lib/assets/images/ln.png'),
                          width: 50,
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
