import 'package:flutter/material.dart';
import 'package:red5/role1.dart';
import 'package:red5/role2.dart';



class Snake_Bite extends StatelessWidget {

  const Snake_Bite({super.key});

  @override
  Widget build(BuildContext context) {
    //int role=0;

    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.rtl,

        child: Snake_BitePage(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }


}

class Snake_BitePage extends StatefulWidget {
  const Snake_BitePage({Key? key}) : super(key: key);

  @override

  State<Snake_BitePage> createState() => _Snake_BiteState();
}

class _Snake_BiteState extends State<Snake_BitePage> {
  @override
  //int role=0;
  Widget build(BuildContext context) {
    //if (role ==1) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' عضة الأفعى',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      home: Scaffold(

        appBar: AppBar(
          title: Center(
            child: Text(
                'عضة الأفعى ',
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
                image: AssetImage('images/Snake Bite.jpg'),
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
                    "\n3.	ضع المريض في وضعية مريحة وطمئنه وهدىء من روعه"
                    "\n4.	لا تحاول الإمساك بالأفعى"
                    "\n5.	لا تستخدم الرباط الضاغط"
                    "\n6.	لا تضع الثلج على منطقة الإصابة."
                    "\n7.	ثبت العضو المصاب وامنع حركته"
                    "\n8.	إخلع الجواهر والملابس الضيقة عن منطقة الإصابة"
                    "\n9.	افتح الوريد وأعط محلول وريدي ملحي NS بمعدل KVO  وادعم الدورة الدموية"
                    "\n10.	راقب العلامات الحيوية باستمرار"
                     "\n11.	كن مستعدا لعمل الإنعاش القلبي الرئوي."
                     "\n12.	النقل الى المستشفى",



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