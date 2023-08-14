import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Head_Injuries extends StatelessWidget {

  const Head_Injuries({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Head_InjuriesPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Head_InjuriesPage extends StatefulWidget {
  const Head_InjuriesPage({Key? key}) : super(key: key);

  @override

  State<Head_InjuriesPage> createState() => _Head_InjuriesState();
}

class _Head_InjuriesState extends State<Head_InjuriesPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '  إصابة الرأس',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                ' إصابة الرأس',
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
                image: AssetImage('images/Head Injuries.jpg'),
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

                "\n1.	حافظ على تثبيت الراس والرقبة والجسم في وضع مستقيم وضع طوق الرقبة"
                    "\n2.	إفتح مجرى التنفس وحافظ عليه مفتوحاً"
                    "\n3.	أعط الأكسجين وادعم التنفس."
                    "\n4.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية."
                    "\n5.	ثبت المريض جيدا على لوح الظهر"
                    "\n6.	افحص مستوى الوعي والعلامات الحيوية للمريض باستمرار"
                    "\n7.	النقل الى المستشفى",

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