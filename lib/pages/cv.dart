import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class cv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        //
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/oussema.jpg'),
                ),
                const Text(
                  'Oussema Naffety',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'APP DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                 Text(
                  'Contatct me',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      title: Text(
                        '+216 54 555 160',
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16.0,
                        ),
                      ),
                    )),
                Card(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                    child: ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'oussemanaffetyy@gmail.com',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue.shade900,
                            fontFamily: 'Source Sans Pro'),
                      ),
                    )
                    ),
                    Card(
                 margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          launch("https://www.facebook.com/oussemanaffetyy/");
                        },
                        color: Colors.blue,
                        icon: Icon(FontAwesomeIcons.facebook),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://twitter.com/oussemanaffetyy");
                        },
                        color: Colors.blueAccent,
                        icon: Icon(FontAwesomeIcons.twitter),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://www.instagram.com/oussemanaffetyy/");
                        },
                        color: Colors.red,
                        icon: Icon(FontAwesomeIcons.instagram),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://www.linkedin.com/in/oussemanaffety/");
                        },
                        color: Colors.blueGrey,
                        icon: Icon(FontAwesomeIcons.linkedin),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://github.com/oussemanaffetyy");
                        },
                        color: Colors.black,
                        icon: Icon(FontAwesomeIcons.github),
                      ),
                    ],
                  ),
                ),
              
              ]),
        ));
  }
}
