import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
   home:Home(),
));
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
    /* body: Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.alternate_email,
          ),
          color: Colors.amber,
        ),
        child: ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(
            Icons.mail
          ),
          label: Text('mail me'),
         // style: ButtonStyle(
         //   backgroundColor: Colors.red[600],
          //),
        ),

        Icon(
          Icons.airport_shuttle,
          color: Colors.lightBlue,
          size: 50.0,
        ),
       // child: Image(
       //  image: AssetImage('assets/space2.jpg'),
        //    ),
        ),*/
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
        margin: EdgeInsets.all(30.0),
        color: Colors.grey[400],

        child: Text('hello raj'),
      ),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          // StretchMode.fadeTitle;
        },
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}




