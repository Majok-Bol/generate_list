import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Generate list items',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        body: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child:ListView.builder(
            itemCount: 100,
              
              itemBuilder: (context,index){
              return SizedBox(child: ListTile(leading:Icon(Icons.star,color: Colors.blueGrey,),title: Text('$index'),subtitle: Text('List of item'),));
            
          }),
        ),
      ),
    );
  }
}