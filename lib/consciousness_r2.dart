import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Consciousness_r2 extends StatelessWidget {

  const Consciousness_r2({super.key});

  @override
  Widget build(BuildContext context) {
    int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Consciousness_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Consciousness_r2Page extends StatefulWidget {
  const Consciousness_r2Page({Key? key}) : super(key: key);

  @override

  State<Consciousness_r2Page> createState() => _Consciousness_r2State();
}

class _Consciousness_r2State extends State<Consciousness_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' تغيير مستوى الوعي',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' تغيير مستوى الوعي',
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
                image: AssetImage('images/Altered Level Of Consciousness2.jpg'),
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
                    "\n3. اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4.	افحص مستوى السكر في الدم"
                    "\n5.	أعد فحص العلامات الحيوية للمصاب باستمرار"
                    "\n6.	صل المريض بجهاز مراقبة القلب"
                    "\n7.	كن جاهزا لعمل التنبيب الرئوي عند اللزوم."
                "\n8.	كن مستعدا لعمل الإنعاش القلبي الرئوي عند اللزوم"
                "\n9.	النقل الى المستشفى",


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