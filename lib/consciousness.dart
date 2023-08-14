import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Consciousness extends StatelessWidget {

  const Consciousness({super.key});

  @override
  Widget build(BuildContext context) {
    int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: ConsciousnessPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class ConsciousnessPage extends StatefulWidget {
  const ConsciousnessPage({Key? key}) : super(key: key);

  @override

  State<ConsciousnessPage> createState() => _ConsciousnessState();
}

class _ConsciousnessState extends State<ConsciousnessPage> {
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
                image: AssetImage('images/Altered Level Of Consciousness1.jpg'),
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
                    "\n2. اعط الاكسجين وادعم التنفس"
                    "\n3. اعط محلول وريدي ملحي NS وادعم الدورة الدموية"
                    "\n4.	افحص مستوى السكر في الدم"
                    "\n5.	أبدا في الإنعاش القلبي الرئوي عند اللزوم"
                    "\n6.	أعد فحص العلامات الحيوية للمصاب باستمرار"
                    "\n7.النقل الى المستشفى",


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