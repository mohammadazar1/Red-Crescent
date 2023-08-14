import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Overdose_r2 extends StatelessWidget {

  const Overdose_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Overdose_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Overdose_r2Page extends StatefulWidget {
  const Overdose_r2Page({Key? key}) : super(key: key);

  @override

  State<Overdose_r2Page> createState() => _Overdose_r2State();
}

class _Overdose_r2State extends State<Overdose_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الجرعات الزائدة',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' الجرعات الزائدة',
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
                image: AssetImage('images/Overdose.jpg'),
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
                    "\n3.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4.	افحص العلامات الحيوية للمريض باستمرار"
                    "\n5.	افحص مستوى سكر الدم لدى المريض"
                    "\n6.	قدم الدعم النفسي والمعنوي للمريض"
                    "\n7.	اتصل في المدير الطبي من اجل امكانية اعطاء جرعة مضادة"
                    "\n8.	صل المريض بجهاز مراقبة القلب"
                    "\n9.	كن جاهزا لعمل التنبيب الرئوي"
                    "\n10.	كن مستعدا لعمل الإنعاش القلبي الرئوي"
                    "\n11.	اذا كان التسمم ناتج عن مركبات الفسفور العضوية اعط اتروبين 1 ملغم بجرعات وريدية متتالية حسب توصيات المدير الطبي"
                    "\n12.	النقل للمستشفى",


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