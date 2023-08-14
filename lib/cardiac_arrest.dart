import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Cardiac_Arrest extends StatelessWidget {

  const Cardiac_Arrest({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Cardiac_ArrestPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Cardiac_ArrestPage extends StatefulWidget {
  const Cardiac_ArrestPage({Key? key}) : super(key: key);

  @override

  State<Cardiac_ArrestPage> createState() => _Cardiac_ArrestState();
}

class _Cardiac_ArrestState extends State<Cardiac_ArrestPage> {
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
                image: AssetImage('images/Cardiac Arrest.jpg'),
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

                    "\n1.	أفحص مستوى الوعى وال ABC"
                    "\n2.	تأكد من فقدان الوعي وعدم وجد التنفس والنبض"
                    "\n3.	ابدأ بالإنعاش القلبي الرئوي بالضغط على الصدر 30 ضغطة عميقة وسريعة ثم افتح مجرى التنفس واستخدم Oral Airway واعط نفسين بواسطة الأمبوباج واستمر بتكرار ذلك التسلسل دون انقطاع."
                    "\n4.	استخدم جهاز مزيل الرجفان الآلي AED"
                    "\n5.	النقل السريع للمستشفى مع استمرار عملية الإنعاش",



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