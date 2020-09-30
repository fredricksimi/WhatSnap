import 'package:flutter/material.dart';
// import './status.dart';
import './profile.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.teal,
          child: Icon(Icons.comment),
        ),
        
        backgroundColor: Colors.black,
        body: Container(
          // color: Colors.white,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 35, 18, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePage()));
                        },
                        child: Material(
                          shape: CircleBorder(),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/me.png'),
                          ),
                        ),
                      ),
                      Material(
                        shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          'Chats',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Material(
                        shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.add_call,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                      Material(
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.teal,
                            ),
                          )),
                    ],
                  ),
                ),
                ThreadTile('images/2.png', 'Rachel Green', Icons.check,
                    'Sent', '1 min'),
                ThreadTile('images/3.png', 'Ross Geller',
                    Icons.check_circle_outline, 'Delivered', '4 min'),
                ThreadTile('images/5.png', 'Joey Tribbiani',
                    Icons.check_circle, 'Read', '30 min'),
                ThreadTile('images/4.png', 'Monica Geller', Icons.check,
                    'Sent', 'Yesterday'),
                ThreadTile('images/7.png', 'Chandler Bing', Icons.check,
                    'Sent', 'Yesterday'),
                ThreadTile('images/6.png', 'Phoebe Buffay', Icons.check,
                    'Sent', 'Yesterday'),
                ThreadTile('images/8.jpg', 'Beth Boland', Icons.check,
                    'Sent', 'Yesterday'),
                ThreadTile('images/favicon.png', 'Steve Rodgers', Icons.check,
                    'Read', 'Yesterday'),
                ThreadTile('images/favicon.png', 'Peyton Charles', Icons.check,
                    'Read', 'Yesterday'),
                ThreadTile('images/favicon.png', 'Natasha Rominoff', Icons.check,
                    'Read', 'Yesterday'),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThreadTile extends StatefulWidget {
  final String sender;
  final IconData checks;
  final String status;
  final String timer;
  final String image;
  // final Function route;
  ThreadTile(
    this.image,
    this.sender,
    this.checks,
    this.status,
    this.timer,
  );
  @override
  ThreadTileState createState() => ThreadTileState();
}

class ThreadTileState extends State<ThreadTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Material(
        shape: CircleBorder(
          side: BorderSide(color: Colors.grey[100], style: BorderStyle.solid),
        ),
        child: CircleAvatar(
          radius: 28,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(this.widget.image),
        ),
      ),
      title: Text(
        this.widget.sender,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      subtitle: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Icon(
              this.widget.checks,
              color: Colors.teal,
              size: 15,
            ),
          ),
          Text(this.widget.status)
        ],
      ),
      trailing: Text(this.widget.timer),
    );
  }
}
