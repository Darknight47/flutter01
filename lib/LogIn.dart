import 'package:flutter/material.dart';
import 'Cafees.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userCtrl = TextEditingController();
    TextEditingController passCtrl = TextEditingController();
    //still StatelessWidget
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage("images/bg2.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.brown.withOpacity(0.9), BlendMode.dstATop),
          ),
        ),
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 55),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  Center(
                    child: Text(
                      "Fika&Fokus",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 56,
                        backgroundColor: Color.fromARGB(51, 183, 183, 185),
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  const SizedBox(
                    //Margin between elements.
                    height: 12,
                  ),
                  // ignore: prefer_const_constructors
                  CircleAvatar(
                    radius: 77,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        "https://img.freepik.com/free-vector/mysterious-mafia-man-wearing-hat_52683-34829.jpg?t=st=1648889842~exp=1648890442~hmac=6ff53459fbf62e0b08f8a44b8d1f71a84b693415923df79ea74a1c74e9d423a9&w=740",
                      ),
                    ),
                  ),
                  Card(
                    // ignore: prefer_const_constructors
                    child: TextField(
                      controller: userCtrl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'User Name',
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(51, 183, 183, 185),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Card(
                    // ignore: prefer_const_constructors
                    child: TextField(
                      obscureText: true,
                      controller: passCtrl,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                        icon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 30,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color: Color.fromARGB(51, 183, 183, 185),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    //Margin between elements.
                    height: 12,
                  ),
                  Container(
                    height: 50,
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                    child: ElevatedButton(
                      onPressed: () {
                        print(userCtrl.text);
                        print(passCtrl.text);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondRoute(),
                          ),
                        );
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Pacifico',
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(51, 161, 161, 165),
                        side: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    //Margin between elements.
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        color: Color.fromARGB(200, 219, 219, 223),
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    //Margin between elements.
                    height: 34,
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'No Account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 4),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(51, 161, 161, 165),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
