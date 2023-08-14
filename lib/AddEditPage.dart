import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:red5/main.dart';
import 'package:red5/search.dart';





class AddEditPage extends StatefulWidget {
 List list;

 AddEditPage({Key? key, required this.list, required this.index}) : super(key: key);
   int index;

  @override
  State<AddEditPage> createState() => _AddEditPageState();}

class _AddEditPageState extends State<AddEditPage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController role = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  final activeController = TextEditingController();

  bool editMode = false;

  bool checkboxValue = false;
  addUpdateData() async {
    if(editMode){
      String apiurl = "http://192.168.1.167/emg_guide/edit.php";

      // Store all data with Param Name.
      var response = await http.post(Uri.parse(apiurl), body: {
        //get password text
        'user_id' : widget.list[widget.index]['user_id'],

        'username' : username.text,
        'email' : email.text,
        'password' : password.text,
        'role' : role.text,
        'address' : address.text,
        'active' : activeController.text,
      });
    }else{
      String apiurl = "http://172.16.2.75/emg_guide/add.php";

      // Store all data with Param Name.
      var response = await http.post(Uri.parse(apiurl), body: {
        'email' : email.text,
        'password' : password.text,
        'role' : role.text,
        'address' : address.text,
        'username':username.text
      });
    }

  }


  @override
  void initState() {
    super.initState();
    if(widget.index != null){
      editMode = true;
      username.text = widget.list[widget.index]['username'];
      role.text = widget.list[widget.index]['role'];
      password.text = widget.list[widget.index]['password'];
      address.text = widget.list[widget.index]['address'];
      email.text = widget.list[widget.index]['email'];

    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(editMode ? 'Update' :'Add Data'),),
      body: ListView(
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: 'username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: 'Last password',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: role,
              decoration: InputDecoration(
                labelText: 'role',
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: address,
              decoration: InputDecoration(
                labelText: 'Address',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'email',
              ),
            ),
          ),


          Padding(padding: EdgeInsets.all(8),
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  addUpdateData();

                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),),);
                debugPrint('Clicked RaisedButton Button');
              },
              color: Colors.blue,
              child: Text(editMode ? 'Update' :'Save',style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}