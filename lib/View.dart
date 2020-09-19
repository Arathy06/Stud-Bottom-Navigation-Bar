import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class View extends StatelessWidget {
  var sname=["Arathy","Anupama","Amala","Athira","Soumya","Aravind","Anjana","Binu","Deenu","Vivek"];
  var rollno=["1","2","3","4","5","6","7","8","9","10"];
  var admno=["1111","2222","3333","4444","5555","6666","7777","8888","9999","1010"];
  var col=["IHRD,Adoor","IHRD mvk","KVVS","TKM","SNIT","UIT","TKKY","TBBH","XYZ","SSYY"];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.greenAccent,Colors.redAccent])
      ),
      child: ListView.builder(
          itemCount: sname.length,
          itemBuilder: (context,index){
            return Card(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.class_,color: Colors.amberAccent,),
                trailing: Icon(Icons.arrow_downward,color: Colors.grey,),
                title: Text(sname[index],style: TextStyle(color: Colors.green,fontSize: 20.0),),
                subtitle: Text("Rollno:"+rollno[index]+"\n"+"Admission No:"+admno[index]+"\n"+"College:"+col[index]),
              ),
            );
          }),
    );
  }
}
