import 'package:flutter/material.dart';
import 'package:red5/burns.dart';
import 'package:red5/burns_r2.dart';
import 'package:red5/consciousness.dart';
import 'package:red5/consciousness_r2.dart';
import 'package:red5/sensitivity.dart';
import 'package:red5/sensitivity_r2.dart';
import 'package:red5/cva.dart';
import 'package:red5/cva_r2.dart';
import 'package:red5/head_injuries.dart';
import 'package:red5/head_injuries_r2.dart';
import 'package:red5/hypothermia.dart';
import 'package:red5/hypothermia_r2.dart';
import 'package:red5/heat_stroke.dart';
import 'package:red5/heat_stroke_r2.dart';
import 'package:red5/emergency_delivery.dart';
import 'package:red5/emergency_delivery_r2.dart';
import 'package:red5/nausea_and_vomiting.dart';
import 'package:red5/nausea_and_vomiting_r2.dart';
import 'package:red5/overdose.dart';
import 'package:red5/overdose_r2.dart';
import 'package:red5/pneumothorax.dart';
import 'package:red5/pneumothorax_r2.dart';
import 'package:red5/epilepsy.dart';
import 'package:red5/epilepsy_r2.dart';
import 'package:red5/spinal_cord_injuries.dart';
import 'package:red5/spinal_cord_injuries_r2.dart';
import 'package:red5/chest_pain.dart';
import 'package:red5/chest_pain_r2.dart';
import 'package:red5/cardiac_arrest.dart';
import 'package:red5/cardiac_arrest_r2.dart';
import 'package:red5/fractures.dart';
import 'package:red5/fractures_r2.dart';
import 'package:red5/eye_injuries.dart';
import 'package:red5/eye_injuries_r2.dart';
import 'package:red5/snake_bite.dart';
import 'package:red5/snake_bite_r2.dart';
import 'package:red5/endotracheal_intubation_r2.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'نظام عمل الإسعاف',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "تغيير مستوى الوعي", "age": 29},
    {"id": 2, "name":  "الحساسية الشديدة", "age": 40},
    {"id": 3, "name": "الحروق", "age": 5},
    {"id": 4, "name": "الجلطة الدماغية", "age": 35},
    {"id": 5, "name": "إصابة الرأس", "age": 21},
    {"id": 6, "name": "انخفاض درجة الحرارة", "age": 55},
    {"id": 7, "name":  "ضربة الشمس", "age": 30},
    {"id": 8, "name": "الولادة الطارئة", "age": 14},
    {"id": 9, "name": "الغثيان والتقيؤ", "age": 100},
    {"id": 10, "name":  "الجرعات الزائدة", "age": 32},
    {"id": 11, "name":  "التنبيب الرئوي", "age": 32},
    {"id": 12, "name":  "تجمع هواء في الصدر", "age": 32},
    {"id": 13, "name":  "نوبة الصرع", "age": 32},
    {"id": 14, "name":  "إصابات الحبل الشوكي", "age": 32},
    {"id": 15, "name":  "ألم الصدر لدى الكبار", "age": 32},
    {"id": 16, "name":  "الإنعاش القلبي الرئوي", "age": 32},
    {"id": 17, "name":  "الكسور", "age": 32},
    {"id": 18, "name":  "إصابات العين", "age": 32},
    {"id": 19, "name":  "عضة الأفعى", "age": 32},

  ];
  int role=3;
  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('نظام عمل الإسعاف'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'بحث', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.red,
                  elevation: 4,

                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                      trailing: Text(
                        _foundUsers[index]["id"].toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                      title: Row(
                          children: <Widget>[
                            Text(_foundUsers[index]['name'],
                              style: const TextStyle(fontSize: 24),
                            ),

                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                if(_foundUsers[index]["id"] == 1)
                                {
                                  if (role==2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Consciousness()),
                                    );
                                  }
                                  else if(role==3){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Consciousness_r2()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 2){
                                  if (role==2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Sensitivity()),
                                    );
                                  }
                                  else if(role==3){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Sensitivity_r2()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 3  ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Burns_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Burns()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 4  ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Cva_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Cva()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 5 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Head_Injuries_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Head_Injuries()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 6 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Hypothermia_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Hypothermia()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 7 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Heat_Stroke_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Heat_Stroke()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 8 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Emergency_Delivery_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Emergency_Delivery()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 9 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Nausea_And_Vomiting_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Nausea_And_Vomiting()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 10 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Overdose_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Overdose()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 11 ){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Endotracheal_Intubation_r2()),
                                  );
                                }
                                else if(_foundUsers[index]["id"] == 12 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Pneumothorax_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Pneumothorax()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 13 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Epilepsy_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Epilepsy()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 14 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Spinal_Cord_Injuries_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Spinal_Cord_Injuries()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 15 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Chest_Pain_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Chest_Pain()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 16 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Cardiac_Arrest_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Cardiac_Arrest()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 17 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Fractures_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Fractures()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 18 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Eye_Injuries_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Eye_Injuries()),
                                    );
                                  }
                                }
                                else if(_foundUsers[index]["id"] == 19 ){
                                  if (role==3)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Snake_Bite_r2()),
                                    );
                                  }
                                  else if(role==2)
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Snake_Bite()),
                                    );
                                  }
                                }
                              },
                              child: const Text('Disabled'),
                            ),




                            // subtitle: Text(
                            //    '${_foundUsers[index]["age"].toString()} years old'),
                          ])

                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



