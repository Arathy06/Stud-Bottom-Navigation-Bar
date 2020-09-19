import 'package:flutter/material.dart';



class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  var sarray=[];
  var sarray1=[];
  var sarray2=[];
  var sarray3=[];
  TextEditingController sname=TextEditingController();
  TextEditingController sroll=TextEditingController();
  TextEditingController sadm=TextEditingController();
  TextEditingController scol=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
          child:Column(
            children: [
              SizedBox(height: 80.0,),
              TextField(
                controller: sname,
                decoration: InputDecoration(
                    hintText: "Enter the student name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                controller: sroll,
                decoration: InputDecoration(
                    hintText: "Enter rollno",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30.0,),

              TextField(
                controller: sadm,
                decoration: InputDecoration(
                    hintText: "Enter the admission no",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30.0,),

              TextField(
                controller: scol,
                decoration: InputDecoration(
                    hintText: "Enter the college",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 30.0,),

              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  var s1=sname.text;
                  var s2=sroll.text;
                  var s3=sadm.text;
                  var s4=scol.text;

                  // print(nwtask);
                  setState(() {
                    sarray.add(s1);
                    sarray1.add(s2);
                    sarray2.add(s3);
                    sarray3.add(s4);
                  });

                },
                child: Center(child: Text("SUBMIT")),),

              ListView.builder(
                  shrinkWrap: true,
                  itemCount: sarray.length == null? 0: sarray.length,
                  itemBuilder: (context,index){
                    return Card(
                      elevation: 10.0,
                      child: ListTile(
                          leading: Icon(Icons.play_for_work),
                          title: Text(sarray[index],style: TextStyle(color: Colors.indigoAccent,fontSize: 15.0),),
                          subtitle: Text("Roll No:"+sarray1[index]+"\n"+"Admn No:"+sarray2[index]+"\n"+"College"+sarray3[index]),
                          trailing: GestureDetector(
                              onTap: (){

                                setState(() {
                                  sarray.removeAt(index);
                                });
                              },

                              child: Icon(Icons.delete))),
                    );

                  }),

            ],
          ),
        );




  }
}

