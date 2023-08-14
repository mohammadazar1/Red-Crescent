import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Eye_Injuries extends StatelessWidget {

  const Eye_Injuries({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Eye_InjuriesPage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Eye_InjuriesPage extends StatefulWidget {
  const Eye_InjuriesPage({Key? key}) : super(key: key);

  @override

  State<Eye_InjuriesPage> createState() => _Eye_InjuriesState();
}

class _Eye_InjuriesState extends State<Eye_InjuriesPage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' إصابات العين',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                '   إصابات العين ',
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
                image: AssetImage('images/Eye Injuries.jpg'),
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
                    "\n4.	حدد مكان وطبيعة الإصابة."
                    "\n5.	إغسل عينه المصابة بمحلول اللمح الفسيولوجي (0.9%) Saline او بماء نظيف."
                    "\n6.	اعط محلول وريدي ملحي NS وادعم الدورة الدموية."
                    "\n7.	افحص العلامات الحيوية للمريض باستمرار"
                    "\n8.	غط كلتا عيني المريض"
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