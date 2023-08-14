import 'package:flutter/material.dart';
import 'package:red5/main.dart';
import 'dart:convert';

import 'dart:convert' as convert;
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;



import 'main.dart';
void main() => runApp(MaterialApp(
  home: MyRegister(),
), );


@override
  Widget build(BuildContext context) {
return MaterialApp(
  home: Scaffold(
      appBar: AppBar(title: const Text('User Registration Form')),
      body: const Center(
        child: MyRegister()
        )
      )
    );
}


class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override

 final _formKey = GlobalKey<FormState>();
 String dropdownValue = '';
  final  roleController =  TextEditingController();
  var items = ['ضابط اسعاف مستوى اول', 'ضابط اسعاف مستوى ثاني', ];
  bool isLoading=false;
  
  var reg=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();

     Register() async {

 String username = usernameController.text;
  String email = emailController.text;
  String password = passwordController.text;
  // Getting value from Controller
  String address=addressController.text;
 String role=roleController.text;
 
  // SERVER API URL
  String apiurl = "http://192.168.1.167/emg_guide/Register.php";

  // Store all data with Param Name.
  var response = await http.post(Uri.parse(apiurl), body: {
    'username': username, //get the username text
    'password': password,
    'email': email,
    'address': address ,
    'role':role//get password text
  });
 //print('HERE WE GO');
  // Getting Server response into variable.

 var data= await json.decode(json.encode(response.body));
  // If Web call Success than Hide the CircularProgressIndicator.
  if(data=="Error") {
    Fluttertoast.showToast(
        msg: "الايميل موجود ",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }else{
    Fluttertoast.showToast(
        msg: "تم التسجيل بنجاح",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  setState(() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

);
  }
  // Showing Alert Dialog with Response JSON Message.
  
 
}
  

  @override
  Widget build(BuildContext context) {
   
    return Form(
      key: _formKey,
      child: Container(
         
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/register.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          
          body: Stack(
            
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 30),
                child: const Text(
                  'إنشاء حساب',
                  style: TextStyle(color: Colors.black, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        child:
                        
                        Column(
                          children: [
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "الأسم",
                                hintStyle: const TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
    if (value == null || value.isEmpty) {
      return 'ادخل اسم';
    }
    return null;
  },
                              controller: usernameController,
                            ),
                              
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "الأيميل",
                                  hintStyle: const TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                                   validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'أدخل الإيميل';
                  String pattern = r'\w+@\w+\.\w+';
                  if (!RegExp(pattern).hasMatch(value))
                    return 'الإيميل غير صحيح';
                  return null;
                },
                              controller: emailController,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              obscureText: true,
                              decoration: InputDecoration(
                                
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                   
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                    
                                  ),
                                  hintText: "باسورد",
                                  hintStyle: const TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                
                                  ),
                                  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'ادخل باسورد';
    }
    return null;
  },
                              controller: passwordController,
                            ),

                            const SizedBox(
                              height: 25,
                            ),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "الموقع",
                                  hintStyle: const TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                                  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'ادخل الموقع';
    }
    return null;
  },
                              controller: addressController,
                               
                            ),


                            TextField(
                              controller: roleController,
                              decoration: InputDecoration(
                                hintText: "اختر رتبتك",
                                suffixIcon: PopupMenuButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down),
                                  onSelected: (String value) {
                                    roleController.text = value;
                                  },
                                  itemBuilder: (BuildContext context) {
                                    return items
                                        .map<PopupMenuItem<String>>((String value) {
                                      return new PopupMenuItem(
                                          child: new Text(value), value: value);
                                    }).toList();
                                  },
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '',
                                      style: TextStyle(
                                          fontSize: 27, fontWeight: FontWeight.w700),
                                    ),
                                    RaisedButton(


                                      child: Text(
                                        'إنشاء حساب',
                                        style: TextStyle(
                                            fontSize: 27, fontWeight: FontWeight.w700),
                                      ),

                                          onPressed: () {
                                            if ( _formKey.currentState!.validate()) {
                                              _formKey.currentState!.save();
                                              print("form submitted.");

                                              Register();
                                            }
                                          },

                                          
                                    )
                                  ],
                                ),
    
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String? validateText(String formText){
if(formText.isEmpty)return'field';
return null;
}
String? validateEmail(String formEmail){
if(formEmail.isEmpty)return'الإيميل خاطىء';
String pattern=r'\w+@\w+\.\w+';
RegExp regex=RegExp(pattern);
if(!regex.hasMatch(formEmail ))return 'الإيميل خاطىء';
return null;
}
  



  