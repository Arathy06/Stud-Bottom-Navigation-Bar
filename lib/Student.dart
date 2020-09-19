import 'package:flutter/material.dart';
import 'package:flutter_stud_botnavbar/Add.dart';
import 'package:flutter_stud_botnavbar/Search.dart';
import 'package:flutter_stud_botnavbar/View.dart';


class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  var pages=[Add(),View(),Search()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("Student Page")),
        ),
        body:pages[_myindex],

        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){

              setState(() {
                _myindex=index;
              });
            },
            currentIndex: _myindex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.redAccent,
            iconSize: 20.0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Student Name")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.details),
                  title: Text("View details")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("Search"))
            ]),
      ),

    );
  }
}
