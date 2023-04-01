import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
   _launchURL(String url) async {
  if (!await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('TEAM'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 60.0,
                ),
                Column(
                  children: <Widget>[
                    Text('Name'),
                    Text('Machine Learning'),
                    IconButton(
                      onPressed: () {
                        _launchURL('https://www.linkedin.com/in/shashwatrai05/');
                      },
                      icon: const Icon(Icons.link_rounded),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
