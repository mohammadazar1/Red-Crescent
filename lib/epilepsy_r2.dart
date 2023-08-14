import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Epilepsy_r2 extends StatelessWidget {

  const Epilepsy_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Epilepsy_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Epilepsy_r2Page extends StatefulWidget {
  const Epilepsy_r2Page({Key? key}) : super(key: key);

  @override

  State<Epilepsy_r2Page> createState() => _Epilepsy_r2State();
}

class _Epilepsy_r2State extends State<Epilepsy_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '  نوبة الصرع',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '  نوبة الصرع ',
                style: const TextStyle(fontSize: 30)
            ),
          ),
          backgroundColor: Colors.red,
          leading: GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyApp2()),
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
                image: AssetImage('images/Epilepsy.jpg'),
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

                    "\n1.	لا تتدخل لمنع التشنجات ولا تضع اي شيء في الفم "
                    "\nً2.	ابعد من حول المصاب كل ما يمكن أن يؤذيه"
                    "\n3.	بعد انتهاء التشنجات افحص مستوى الوعي و ABC"
                    "\n4.	ضع المريض في وضعية مريحة"
                    "\n5.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n6.	أعط الأكسجين وادعم التنفس"
                    "\n7.	اعط محلول وريدي ملحي NS حسب الحاجة وادعم الدورة الدموية."
                    "\n8.	اعط حقنة وريدية من الأسيفال او الفاليوم (5 ملغم خلال 2 ـ 3 دقائق) للمريض ثم كرر الجرعة عند اللزوم كحد اعلى 15 ملغم"
                    "\n9.	النقل الى المستشفى. ",


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