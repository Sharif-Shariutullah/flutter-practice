import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Source Code Flow : 5

// 1 out of 5
void main() {
  // calling 2;
  runApp(const MyApp());
  print('...Project Ready...');
}

// 2 out of 5
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 3 out of 5
    // calling 4; all the activity i mean pages will be declare here(app.routing.module.ts)
    // ##------------ seems: index file & app.component file (Angular)
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme: ThemeData(primarySwatch: Colors.amber),
        color: Colors.indigo,
        debugShowCheckedModeBanner: false,
        home: const HomeActivity());
  }
}

// 4 out of 5
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  // to call this in the action button
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    // 5 out of 5
    // ##------------ seems: Each Component file (Angular)

    return Scaffold(
      appBar: AppBar(
        title: Text("Sharif App"),
        backgroundColor: Colors.amber,
        // titleSpacing: 0,
        // centerTitle: true,
        elevation: 1,
        toolbarHeight: 60,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar("I am search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackBar("I am apps", context);
              },
              icon: Icon(Icons.apps)),
          IconButton(
              onPressed: () {
                MySnackBar("I am settings", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackBar("I am log out", context);
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.blue,
        child: Icon(Icons.recommend),
        onPressed: () {
          MySnackBar("I Like you", context);
        },
      ),
      body: Text("Bismillahir Rahmanir Rahim"),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        elevation: 5,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
          // BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          // BottomNavigationBarItem(icon: Icon(Icons.fiber_smart_record), label: "Record")
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("Calling ", context);
          }
          if (index == 1) {
            MySnackBar("Message ", context);
          }
          if (index == 2) {
            MySnackBar("Apps ", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero, children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("Mohammad"),
          accountEmail: Text("mohammad@example.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("M", style: TextStyle(fontSize: 40.0),),),
          decoration: BoxDecoration(color: Colors.blue,),),
        _createDrawerItem(
          icon: Icons.home,
          text: 'Home',
          onTap: () => MySnackBar("Navigating to Home page", context),),
        _createDrawerItem(
          icon: Icons.call,
          text: 'Contact',
          onTap: () => MySnackBar("Navigating to Contact page", context),),
        _createDrawerItem(
          icon: Icons.camera_alt,
          text: 'Camera',
          onTap: () => MySnackBar("Navigating to Camera page", context),),
        _createDrawerItem(
          icon: Icons.fiber_smart_record,
          text: 'Record',
          onTap: () => MySnackBar("Navigating to Record page", context),),
        _createDrawerItem(
          icon: Icons.video_call,
          text: 'Video',
          onTap: () => MySnackBar("Navigating to Video page", context),),
        _createDrawerItem(
          icon: Icons.calculate,
          text: 'Calculator',
          onTap: () => MySnackBar("Navigating to Calculator page", context),),
      ],),),
    );
  }
}

Widget _createDrawerItem(
    { required IconData icon, required String text, required GestureTapCallback onTap,}) {
  return ListTile(
    title: Row(children: <Widget>[ Icon(icon), Padding(
      padding: EdgeInsets.only(left: 8.0), child: Text(text),)
    ],), onTap: onTap,);
}