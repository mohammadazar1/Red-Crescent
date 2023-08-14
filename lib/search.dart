import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:red5/AddEditPage.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:red5/AddEditPage.dart';

import 'package:flutter_session/flutter_session.dart';




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //startLogin();
  String username = '';
  String password = '';
  String role = '';
  var session = FlutterSession();

  String text = "";
  String isLogin ="";
  String userN ="";


  /*_getSession() async {

    String apiurl = "http://172.16.2.93/emg_guide/read.php";
    //     // Store all data with Param Name.
    var response = await http.post(Uri.parse(apiurl), body: {
    'username': username, //get the username text
    'role': role,});
    if (response.statusCode == 200) {
      var jsondata = json.decode(response.body);
      String role = jsondata["role"];
      isLogin = await FlutterSession().get(role);

    }
  }

   */

  startLogin() async {
    String apiurl = "http://192.168.1.167/emg_guide/login.php"; //api url
    //dont use http://localhost , because emulator don't get that address
    //insted use your local IP address or use live URL
    //hit "ipconfig" in windows or "ip a" in linux to get you local IP
    //print(role);

    var response = await http.post(Uri.parse(apiurl), body: {
      'username': username, //get the username text
      'password': password,//get password text
      'role': role

    });
    //if (response.statusCode == 200) {
      //var jsondata = json.decode(response.body);


    /*await FlutterSession().set("rollle", role);
     // String role ='';
      FutureBuilder(
          future: FlutterSession().get("rollle"),

          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Text(snapshot.hasData ? snapshot.data : 'loading');
          });
     // role=jsondata["role"];
      //print(jsondata["uid"]);
      //print(role);

     */
    //}



  }

  Future getData()async{
    String apiurl = "http://192.168.1.167/emg_guide/read.php";

    //     // Store all data with Param Name.

  //  String isLogin = await FlutterSession().get("isLogin");
    var response = await http.get(Uri.parse(apiurl));
    return json.decode(response.body);




  }


  @override
  void initState() {
    super.initState();
    startLogin();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('admin'),
      ),


      body:




      FutureBuilder(

        future: getData(),
        builder: (BuildContext context,AsyncSnapshot snapshot ){
          if(snapshot.hasError) print(snapshot.error);

          if (snapshot.hasData) {


            return ListView.builder(

              itemCount: snapshot.data!.length,
              itemBuilder: (context,index){
                List list = snapshot.data;
                return ListTile(
                  leading: GestureDetector(child: Icon(Icons.edit),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddEditPage(list: list,index: index,),),);
                      debugPrint('Edit Clicked');
                    },),
                  title: Text(list[index]['username']),
                  subtitle: Text(list[index]['email']),

                  trailing: GestureDetector(child: Icon(Icons.delete),
                    onTap: (){
                      setState(() {
                        String apiurl = "http://192.168.1.167/emg_guide/delete.php";
                        http.post(Uri.parse(apiurl),body: {
                          'user_id' : list[index]['user_id']

                          ,
                        });
                      });
                      debugPrint('delete Clicked');
                    },),
                );
              }
          );
          } else {
            return CircularProgressIndicator();
          }
        },

      ),

    );
  }
}
