import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Head_Injuries_r2 extends StatelessWidget {

  const Head_Injuries_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Head_Injuries_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Head_Injuries_r2Page extends StatefulWidget {
  const Head_Injuries_r2Page({Key? key}) : super(key: key);

  @override

  State<Head_Injuries_r2Page> createState() => _Head_Injuries_r2State();
}

class _Head_Injuries_r2State extends State<Head_Injuries_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '  إصابة الرأس',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' إصابة الرأس',
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
                image: AssetImage('images/Head Injuries.jpg'),
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

                    "\n1.	حافظ على تثبيت الراس والرقبة والجسم في وضع مستقيم وضع طوق الرقبة"
                    "\n2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n3.	أعط الأكسجين وادعم التنفس."
                    "\n4.	اعط محلول وريدي ملحي NS بحيث تحافط على ضغط الدم الانقباضي بحدود 120 ملم زئبق وادعم الدورة الدموية"
                    "\n5.	ثبت المريض جيدا على لوح الظهر"
                    "\n6.	افحص مستوى الوعي والعلامات الحيوية للمريض باستمرار"
                    "\n7.	كن جاهزا لعمل التنبيب الرئوي اذا كان مقياس غلاسكو من 8."
                    "\n8.	صل المريض بجهاز مراقبة القلب."
                    "\n9.	كن جاهزا لعمل التنبيب الرئوي."
                    "\n10.	كن مستعدا لعمل الإنعاش القلبي الرئوي"
                    "\n11.	عند حدوث نوبة تشنج اعط المريض 5 ملغم Assival  في الوريد خلال 2ـ 3 دقائق كجرعة اولى بحيث لا يزيد مجموع الجرعات عن 10 ملغم"
                    "\n12.	النقل الى المستشفى.",

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