import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Sensitivity_r2 extends StatelessWidget {

  const Sensitivity_r2({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Sensitivity_r2Page(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Sensitivity_r2Page extends StatefulWidget {
  const Sensitivity_r2Page({Key? key}) : super(key: key);

  @override

  State<Sensitivity_r2Page> createState() => _Sensitivity_r2State();
}

class _Sensitivity_r2State extends State<Sensitivity_r2Page> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'الحساسية الشديدة',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                'الحساسية الشديدة',
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
            children: const <Widget>[
              Image(
                image: AssetImage('images/ٍSevere Allergic reaction.jpg'),
                height: 100,
                width: 100,
              ),

              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nدور ضابط الاسعاف/ مستوى ثان:",

                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                "\n1. افتح مجرى التنفس وحافظ عليه مفتوحا"
                    "\n2.	ضع المريض في وضعية مريحة"
                    "\n3. اعط الاكسجين وادعم التنفس"
                    "\n4. اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4. برد مكان الحرق بواسطة الماء او المحلول الملحي"
                    "\n5.	إذا ظهرت أعراض ضيق التنفس وهبوط الضغط أعط المريض أدرينالين بتركيز 0.5 ملغم حقنا في العضل IM"
                    "\n6.	أعط فينتولين بواسطة جهاز التبخير"
                    "\n7.	أعد فحص العلامات الحيوية  للمصاب باستمرار"
                    "\n8.	صل المريض بجهاز مراقبة القلب"
                    "\n9.	كن جاهزا لعمل التنبيب الرئوي عند اللزوم"
                    "\n10.	كن مستعدا لعمل الإنعاش القلبي الرئوي عند اللزوم"
                    "\n11.	النقل الى المستشفى",

                style: TextStyle(fontSize: 24),

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