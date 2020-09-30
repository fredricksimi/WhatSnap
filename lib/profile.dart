import 'package:flutter/material.dart';
// import 'package:flutterproject/main.dart';

class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null, 
        child: Icon(Icons.edit),
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
                padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                child: Center(child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[100],
                  backgroundImage: AssetImage('images/favicon.png'),
                ),)
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8,0,8,8),
                child: Text('Fredrick Simi', 
                style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 8),
                child: Text('The greatest man will look directly into the Mirror of Erised, and only see himself',
                style: TextStyle(color: Colors.grey[500]), 
                textAlign: TextAlign.center,),
                ),
                SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: ListTile(
                  leading: Icon(Icons.vpn_key),
                  title: Text('Account'),
                  subtitle: Text('Privacy, security, change number'),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Chats'),
                  subtitle: Text('Theme, wallpapers, chat history'),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications'),
                  subtitle: Text('Message, group & call tones'),
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: ListTile(
                  leading: Icon(Icons.data_usage),
                  title: Text('Data and storage usage'),
                  subtitle: Text('Network usage, auto-download'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text('Help'),
                  subtitle: Text('FAQ, contact us, privacy policy'),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Invite a friend'),
                  ),
                ),
                SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
