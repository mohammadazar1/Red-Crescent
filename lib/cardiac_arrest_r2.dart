import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Cardiac_Arrest_r2 extends StatelessWidget {

  const Cardiac_Arrest_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Cardiac_Arrest_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Cardiac_Arrest_r2Page extends StatefulWidget {
  const Cardiac_Arrest_r2Page({Key? key}) : super(key: key);

  @override

  State<Cardiac_Arrest_r2Page> createState() => _Cardiac_Arrest_r2State();
}

class _Cardiac_Arrest_r2State extends State<Cardiac_Arrest_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' الإنعاش القلبي الرئوي',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '  الإنعاش القلبي الرئوي ',
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
                image: AssetImage('images/Cardiac Arrest.jpg'),
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

                    "\n1.	أفحص مستوى الوعى وال ABC"
                    "\n2.	تأكد من فقدان الوعي وعدم وجد التنفس والنبض"
                    "\n3.	ابدأ بالإنعاش القلبي الرئوي بالضغط على الصدر 30 ضغطة عميقة وسريعة ثم افتح مجرى التنفس واستخدم Oral Airway واعط نفسين بواسطة الأمبوباج  واستمر بتكرار ذلك التسلسل دون انقطاع."
                    "\n4.	صل المريض بجهاز مراقبة القلب وراقب التغيرات في تخطيط القلب."
                    "\n5.	حاول عمل التنبيب الرئوي دون انقطاع عملية الإنعاش"
                    "\n6.	النقل السريع للمستشفى مع استمرار عملية الإنعاش "
                    "\n7.	اعط 1 ملغم ادرينالين للمريض مع بداية عملية الإنعاش ثم كل دورتين CPR (حوالي 4 دقائق) خلال عملية الإنعاش"
                    "\n8.	إذا كان المريض بحاجة لصدمة كهربائية (VF or Pulseless VT) اعط صدمة كهربائية 200 جول واستمر مباشرة بعملية الإنعاش."
                    "\n9.	في حال استمر (VF or Pulseless VT) اعط اميودارون 300 ملغم كجرعة اولى ويمكن ان يعاد في حال عدم استجابة المريض للصدمات الكهربائية والجرعة الثانية تكون بعد دورتين انعاش من الجرعة الأولى وبواقع 150 ملغم"
                    "\n10.	استمر بتطبيق الخطوات حسب التسلسل السابق خلال عملية النقل للمستشفى",



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