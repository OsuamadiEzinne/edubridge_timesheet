import 'package:edubridgetimesheet/Logout.dart';
import 'package:edubridgetimesheet/settings.dart';
import 'package:edubridgetimesheet/statistics.dart';
import 'package:edubridgetimesheet/synchronize.dart';
import 'package:edubridgetimesheet/task.dart';
import 'package:flutter/material.dart';

//pages
import './today.dart';
import './thisweek.dart';
import './task.dart';
import './statistics.dart';
import './synchronize.dart';
import './settings.dart';
import './Logout.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('edubridge timesheet'),
          backgroundColor: Colors.blue,
        ),
        body: Time(),

      ),
    ),
  );
}

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Timesheet'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: new Center(
        child: new Text("Think about all you will be able to achieve today", style: new TextStyle(fontSize: 15.0),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow),
            title: Text('Start'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.block),
            title: Text('Stop'),
          ),
        ]
      ),

      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('Ezinne'),
                accountEmail: new Text('osuamadiezinne@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('http://i.pravatar.cc/1507img=300'),
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage("https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg")
                  )
                ),
            ),
            new ListTile(
              title: new Text('Today'),
              trailing: new Icon(Icons.calendar_today),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Today())
                );
              }
            ),
            new ListTile(
                title: new Text('This Week'),
                trailing: new Icon(Icons.calendar_view_day),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Week())
                  );
                }
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
                title: new Text('Task'),
                trailing: new Icon(Icons.add),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Task())
                  );
                }
            ),
            new ListTile(
                title: new Text('Statistics'),
                trailing: new Icon(Icons.data_usage),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Statistics())
                  );
                }
            ),
            new Divider(
              color: Colors.black,
              height: 5.0,
            ),
            new ListTile(
                title: new Text('Synchronize'),
                trailing: new Icon(Icons.sync),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Synchronize())
                  );
                }
            ),
            new ListTile(
                title: new Text('Settings'),
                trailing: new Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new Settings())
                  );
                }
            ),
            new ListTile(
                title: new Text('Log Out'),
                trailing: new Icon(Icons.remove),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (BuildContext context) => new LogOut())
                  );
                }
            )

          ],

        )
      ),
    );
  }
}
