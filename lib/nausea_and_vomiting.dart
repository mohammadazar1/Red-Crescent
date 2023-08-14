import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';


class Nausea_And_Vomiting extends StatelessWidget {

  const Nausea_And_Vomiting({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Nausea_And_VomitingPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Nausea_And_VomitingPage extends StatefulWidget {
  const Nausea_And_VomitingPage({Key? key}) : super(key: key);

  @override

  State<Nausea_And_VomitingPage> createState() => _Nausea_And_VomitingState();
}

class _Nausea_And_VomitingState extends State<Nausea_And_VomitingPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' الغثيان والتقيؤ',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' الغثيان والتقيؤ',
                style: const TextStyle(fontSize: 30)
            ),
          ),
          backgroundColor: Colors.red,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp1()),
              );
            } ,
          ) ,
        ),

        body: new SingleChildScrollView(

          //Container(
          child: Column(


            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('images/Nausea and Vomiting.jpg'),
                height: 100,
                width: 100,
              ),

              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nدور ضابط الاسعاف/ مستوى أول:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                    "\n1.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n2.	أعط الأكسجين وادعم التنفس"
                    "\n3.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4.	افحص العلامات الحيوية للمريض باستمرار"
                    "\n5.	افحص مستوى سكر الدم لدى المريض"
                    "\n6.	النقل للمستشفى",


                style: const TextStyle(fontSize: 24),

              ),
              //  }

            ],
          ),
        ),
        //),

      ),
    );// }
  }


}