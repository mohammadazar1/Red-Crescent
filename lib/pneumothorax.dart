import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Pneumothorax extends StatelessWidget {

  const Pneumothorax({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: PneumothoraxPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class PneumothoraxPage extends StatefulWidget {
  const PneumothoraxPage({Key? key}) : super(key: key);

  @override

  State<PneumothoraxPage> createState() => _PneumothoraxState();
}

class _PneumothoraxState extends State<PneumothoraxPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تجمع الهواء في الصدر',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' تجمع الهواء في الصدر',
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
                image: AssetImage('images/Pneumothorax.jpg'),
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
                    "\n3.	ضع المريض في وضعية مريحة"
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n5.	افحص العلامات الحيوية للمريض باستمرار"
                     "\n6.	في حال وجود جرح مفتوح شافط في جدار الصدر اغلقه بغيار غير منفذ وثبته بالبلاستر اللاصق من 3 جهات"
                    "\n7.	النقل للمستشفى",


                style: const TextStyle(fontSize: 24),

              ),
              Text(

                textDirection: TextDirection.rtl,

                "\nملاحظة: راقب اعراض وعلامات حدوث هواء ضاغط داخل صدر المريض Tension Pneumothorax.",

                style: const TextStyle(fontSize: 24, color: Colors.green),
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