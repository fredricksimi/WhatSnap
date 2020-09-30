import 'package:flutter/material.dart';
// import 'package:flutterproject/main.dart';
import './profile.dart';

class StatusPage extends StatefulWidget {
  @override
  StatusPageState createState() => StatusPageState();
}

class StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null, 
        child: Icon(Icons.camera_alt),
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
                      onTap:(){
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ProfilePage()));
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
                        'Status',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Material(
                      shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.more_vert,
                          color: Colors.teal,),
                        ),
                    )
                  ],
                ),
              ),
              StatusTile('images/2.png', 'Alexandra Cooper', 'Today, 4:30pm'),
              StatusTile('images/3.png', 'Joey Tribbiani', 'Today, 2:10pm'),
              StatusTile('images/5.png', 'Ross Geller', 'Today, 12:30pm'),
              StatusTile('images/6.png', 'Sommer Ray', 'Today, 09:30am'),
              StatusTile('images/7.png', 'Klaus Mikaelson', 'Today, 09:27am'),
              StatusTile('images/8.jpg', 'Maria Walters', 'Today, 08:30am'),
              StatusTile('images/1.jpg', 'Tony Stark', 'Today, 06:00am'),
              StatusTile('images/favicon.png', 'Wayde Wilson', 'Today, 12:30pm'),
              StatusTile('images/favicon.png', 'Luke Hobbs', 'Today, 12:30pm'),
              SizedBox(height: 60,)
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
  StatusTile(this.image, this.sender, this.timer);
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
          backgroundImage: AssetImage(this.widget.image,),
        ),
      ),
      title: Text(
        this.widget.sender,
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
      subtitle: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right:3.0),
            child: Text(this.widget.timer),
          ),
        ],
      ),
    );
  }
}
