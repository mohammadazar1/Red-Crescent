import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Hypothermia_r2 extends StatelessWidget {

  const Hypothermia_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Hypothermia_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Hypothermia_r2Page extends StatefulWidget {
  const Hypothermia_r2Page({Key? key}) : super(key: key);

  @override

  State<Hypothermia_r2Page> createState() => _Hypothermia_r2State();
}

class _Hypothermia_r2State extends State<Hypothermia_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'انخفاض درجة الحرارة',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                'انخفاض درجة الحرارة',
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
                image: AssetImage('images/Hypothermia.jpg'),
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

                "\n1.	انقل المريض الى مكان دافيء وحافظ على حرارته"
                    "\n2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n3.	أعط الأكسجين وادعم التنفس."
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n5.	افحص مستوى سكر الدم لدى المريض"
                    "\n6.	افحص مستوى الوعي والعلامات الحيوية للمريض باستمرار"
                    "\n7.	صل المريض بجهاز مراقبة القلب"
                    "\n8.	كن جاهزا لعمل التنبيب الرئوي."
                    "\n9.	كن مستعدا لعمل الإنعاش القلبي الرئوي."
                    "\n10.	النقل الى المستشفى. ",


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