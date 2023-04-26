import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data/team.dart';
import 'package:supercharged/supercharged.dart';
import '../data/team_member.dart';

List<String> domains = ['All', 'Android', 'Flutter', 'ML', 'Web'];

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  int selected = -1;

  ImageProvider teamImage = AssetImage('assets/images/team.png');

  // String _value = domains[0];
  List<Map<String, dynamic>> teamMembers = List.from(team);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Team',
                  style:TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      height: 1.6,
                      wordSpacing: 1.6,
                      color: Color(0xff707070)),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              
              Padding(padding: EdgeInsets.only(top: 16)),
              Padding(padding: EdgeInsets.only(top: 16)),
              ...teamMembers.map(
                (e) => TeamMemberPanel(data: e, i: team.indexOf(e)),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
    );
  }
}

class TeamMemberPanel extends StatefulWidget {
  const TeamMemberPanel({
    Key? key,
    required this.data,
    required this.i,
  });

  final Map<String, dynamic> data;
  final int i;

  @override
  State<TeamMemberPanel> createState() => _TeamMemberPanelState();
}

class _TeamMemberPanelState extends State<TeamMemberPanel> {
  @override
  Widget build(BuildContext context,) {
    final size = MediaQuery.of(context).size;
    return 
       Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                AnimatedContainer(
                  duration: 500.milliseconds,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                       color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.grey)),
                  child: GestureDetector(
                    onTap: () {
                      
                    },
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(widget.data['image']),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 24)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        widget.data['name'],
                        style: TextStyle(
                            color: Color(0xff4285F4), fontWeight: FontWeight.bold,
                            fontSize: 22
                             ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Container(
                        width: size.width / 2.0,
                        child: Text(
                          widget.data['role'],
                          style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xff707070),
                              ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            launch(widget.data['other_url']);
                          },
                          child: FaIcon(FontAwesomeIcons.link, size: 18),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        TextButton(
                            onPressed: () {
                              launch(widget.data['github']);
                            },
                            child: FaIcon(FontAwesomeIcons.github, size: 18)),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        TextButton(
                          onPressed: () {
                            launch(widget.data['linkedin']);
                          },
                          child: FaIcon(FontAwesomeIcons.linkedin, size: 18),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          
        ),
      );
  }
}
