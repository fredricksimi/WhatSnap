import 'package:flutter/material.dart';
// import './status.dart';
import './profile.dart';

class CameraPage extends StatefulWidget {
  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        
        backgroundColor: Colors.black,
        body: Container(
          // color: Colors.white,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 35, 18, 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap:(){
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      child: Material(color: Colors.white24,
                        shape: CircleBorder(),
                          child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('images/me.png'),
                        ),
                      ),
                    ),
                    Material(color: Colors.white24,
                      shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                          Icons.search,
                          color: Colors.white,
                      ),
                        ),
                    ),
                    SizedBox(width: 100,),
                    Material(color: Colors.white24,
                      shape: CircleBorder(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                          Icons.person_add,
                          color: Colors.white,
                      ),
                        ),
                    ),
                    Container(
                      // color: Colors.grey,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20)
                      ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4,8,4,8),
                              child: Icon(Icons.rotate_left,
                              color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4,8,4,8),
                              child: Icon(Icons.flash_off,
                              color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4,8,4,8),
                              child: Icon(Icons.timer,
                              color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4,8,4,8),
                              child: Icon(Icons.grid_on,
                              color: Colors.white,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4,8,4,8),
                              child: Icon(Icons.keyboard_arrow_up,
                              color: Colors.white,),
                            ),
                          ],
                        ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Icon(Icons.flash_off, size: 30,color: Colors.white,),
                      Icon(Icons.camera, size: 70,color: Colors.white,),
                      Icon(Icons.switch_camera, size: 30,color: Colors.white,)
                    ],),
                  ),
                  Padding(
                padding: const EdgeInsets.only(bottom:20),
                child: Text('Hold for video, tap for photo', style: TextStyle(color: Colors.white,), textAlign: TextAlign.center,),
              )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
