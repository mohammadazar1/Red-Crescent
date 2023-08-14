import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Eye_Injuries_r2 extends StatelessWidget {

  const Eye_Injuries_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Eye_Injuries_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Eye_Injuries_r2Page extends StatefulWidget {
  const Eye_Injuries_r2Page({Key? key}) : super(key: key);

  @override

  State<Eye_Injuries_r2Page> createState() => _Eye_Injuries_r2State();
}

class _Eye_Injuries_r2State extends State<Eye_Injuries_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' إصابات العين',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '   إصابات العين ',
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
                image: AssetImage('images/Eye Injuries.jpg'),
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

                    "\n1.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n2.	أعط الأكسجين وادعم التنفس"
                    "\n3.	ضع المريض في وضعية مريحة"
                    "\n4.	حدد مكان وطبيعة الإصابة."
                    "\n5.	إغسل عينه المصابة بمحلول اللمح الفسيولوجي (0.9%) Saline او بماء نظيف."
                    "\n6.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية."
                    "\n7.	افحص العلامات الحيوية للمريض باستمرار"
                    "\n8.	غط كلتا عيني المريض"
                    "\n9.	إعطاء مسكن للألم حسب تعليمات المدير الطبي"
                    "\n10.	النقل الى المستشفى",



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