import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Cva extends StatelessWidget {

  const Cva({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: CvaPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class CvaPage extends StatefulWidget {
  const CvaPage({Key? key}) : super(key: key);

  @override

  State<CvaPage> createState() => _CvaState();
}

class _CvaState extends State<CvaPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' الجلطة الدماغية',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' الجلطة الدماغية',
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
                image: AssetImage('images/CVA.jpg'),
                height: 100,
                width: 100,
              ),

              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nدور ضابط الاسعاف/ مستوى اول:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                    "\n1. افتح مجرى التنفس وحافظ عليه مفتوحا"
                    "\n2. اعط الاكسجين وادعم التنفس"
                    "\n3.	افحص مستوى سكر الدم لدى المريض"
                    "\n4.	اعط محلول وريدي (خذ بعين الإعتبار نتيجة النقطة السابقة) وادعم الدورة الدموية"
                    "\n5.	افحص العلامات الحيوية  للمريض باستمرار"
                    "\n6.	كن مستعدا لعمل الإنعاش القلبي الرئوي عند اللزوم"
                     "\n7.	النقل الى المستشفى",

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