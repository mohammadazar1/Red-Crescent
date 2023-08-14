import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Spinal_Cord_Injuries_r2 extends StatelessWidget {

  const Spinal_Cord_Injuries_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Spinal_Cord_Injuries_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Spinal_Cord_Injuries_r2Page extends StatefulWidget {
  const Spinal_Cord_Injuries_r2Page({Key? key}) : super(key: key);

  @override

  State<Spinal_Cord_Injuries_r2Page> createState() => _Spinal_Cord_Injuries_r2State();
}

class _Spinal_Cord_Injuries_r2State extends State<Spinal_Cord_Injuries_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' إصابات الحبل الشوكي',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '   إصابات الحبل الشوكي ',
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
                image: AssetImage('images/Spinal Cord Injuries.jpg'),
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

                    "\n1.	ثبت المريض تثبيتاً كاملاً عللى اللوح الظهري الطويل"
                    "\nً2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً."
                    "\n3.	أعط الأكسجين وادعم التنفس"
                    "\n4.	اعط محلول وريدي ملحي NS حسب الحاجة وادعم الدورة الدموية."
                    "\n5.	افحص العلامات الحيوية للمريض باستمرار.ً"
                    "\n6.	عالج الإصابات الأخرى دون تحريك المصاب"
                    "\n7.	صل المريض بجهاز مراقبة القلب"
                    "\n8.	كن جاهزا لعمل التنبيب الرئوي"
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