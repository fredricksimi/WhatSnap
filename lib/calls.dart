import 'package:flutter/material.dart';
// import 'package:flutterproject/main.dart';
import './profile.dart';

class CallsPage extends StatefulWidget {
  @override
  CallsPageState createState() => CallsPageState();
}

class CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_call),
        backgroundColor: Colors.teal,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: Text(
                        'Calls',
                        style: TextStyle(color: Colors.black, fontSize: 20),
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
                      ),
                    )
                  ],
                ),
              ),
              StatusTile('images/2.png', 'Rachel Green',
                  Icons.call_missed, 'Today, 12:30pm', Icons.video_call),
              StatusTile('images/3.png', 'Joey Tribbiani',
                  Icons.call_missed, 'Today, 12:30pm', Icons.call),
              StatusTile('images/4.png', 'Sofia Franklyn',
                  Icons.call_received, 'Today, 12:30pm', Icons.call),
              StatusTile('images/5.png', 'Peter Parker', Icons.call_made,
                  'Today, 12:30pm', Icons.video_call),
              StatusTile('images/6.png', 'Beth Boland',
                  Icons.call_missed_outgoing, 'Today, 12:30pm', Icons.call),
              StatusTile('images/favicon.png', 'Bruce Wayne', Icons.call_missed,
                  'Today, 12:30pm', Icons.call),
              StatusTile('images/1.jpg', 'Tony Stark', Icons.call_missed,
                  'Today, 12:30pm', Icons.video_call),
              StatusTile('images/favicon.png', 'Wayde Wilson',
                  Icons.call_received, 'Today, 12:30pm', Icons.call),
              StatusTile('images/favicon.png', 'Luke Hobbs',
                  Icons.call_received, 'Today, 12:30pm', Icons.video_call),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class StatusTile extends StatefulWidget {
  final String sender;
  final String timer;
  final String image;
  final IconData callstatus;
  final IconData calltype;
  StatusTile(this.image, this.sender, this.callstatus, this.timer, this.calltype);
  @override
  StatusTileState createState() => StatusTileState();
}

class StatusTileState extends State<StatusTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Material(
        shape: CircleBorder(
          side: BorderSide(color: Colors.green, style: BorderStyle.solid),
        ),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(
            this.widget.image,
          ),
        ),
      ),
      title: Text(
        this.widget.sender,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      subtitle: Row(
        children: [
          Icon(
            this.widget.callstatus,
            size: 15,
            color: this.widget.callstatus == Icons.call_missed
                ? Colors.red
                : Colors.teal,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Text(this.widget.timer),
          ),
        ],
      ),
      trailing: Icon(
        this.widget.calltype,
        color: Colors.teal,
      ),
    );
  }
}
