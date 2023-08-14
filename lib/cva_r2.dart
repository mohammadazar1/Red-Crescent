import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';


class Cva_r2 extends StatelessWidget {

  const Cva_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Cva_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Cva_r2Page extends StatefulWidget {
  const Cva_r2Page({Key? key}) : super(key: key);

  @override

  State<Cva_r2Page> createState() => _Cva_r2State();
}

class _Cva_r2State extends State<Cva_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '  الجلطة الدماغية',
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
                MaterialPageRoute(builder: (context) => MyApp2()),
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

                "\nدور ضابط الاسعاف/ مستوى ثان:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                "\n1. افتح مجرى التنفس وحافظ عليه مفتوحا"
                    "\n2. اعط الاكسجين وادعم التنفس"
                    "\n3.	افحص مستوى سكر الدم لدى المريض"
                    "\n4.	اعط محلول وريدي (خذ بعين الإعتبار نتيجة النقطة السابقة) وادعم الدورة الدموية"
                    "\n5.	صل المريض بجهاز مراقبة القلب وافحص العلامات الحيوية  للمريض باستمرار"
                    "\n6.	كن جاهزا لعمل التنبيب الرئوي عند اللزوم"
                    "\n7.	كن مستعدا لعمل الإنعاش القلبي الرئوي"
                    "\n8.	النقل الى المستشفى.",

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