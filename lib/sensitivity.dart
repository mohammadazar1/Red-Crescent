import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Sensitivity extends StatelessWidget {

  const Sensitivity({super.key});

  @override
  Widget build(BuildContext context) {
    int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: SensitivityPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class SensitivityPage extends StatefulWidget {
  const SensitivityPage({Key? key}) : super(key: key);

  @override

  State<SensitivityPage> createState() => _SensitivityState();
}

class _SensitivityState extends State<SensitivityPage> {
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
                image: AssetImage('images/Severe Allergic reaction.jpg'),
                height: 100,
                width: 100,
              ),
              Text(
                // AbsordPointer(
                // absorbing: false,
                textDirection: TextDirection.rtl,

                "\nدور ضابط الاسعاف/ مستوى اول:",

                style: const TextStyle(fontSize: 30, color: Colors.blue),
              ),


              Text(
                textDirection: TextDirection.rtl,

                "\n1. افتح مجرى التنفس وحافظ عليه مفتوحا"
                "\n2.	ضع المريض في وضعية مريحة"
                    "\n3. اعط الاكسجين وادعم التنفس"
                    "\n4. اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4. برد مكان الحرق بواسطة الماء او المحلول الملحي"
                    "\n5.	اذا كان لدى المريض دواء موصوف من طبيب، ساعده على تناوله"
                    "\n6.	أبدا في الإنعاش القلبي الرئوي عند اللزوم"
                    "\n7.	أعد فحص العلامات الحيوية  للمصاب باستمرار"
                    "\n8.	النقل الى المستشفى",

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